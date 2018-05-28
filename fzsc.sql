/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : fzsc

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2018-05-28 18:16:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attr`
-- ----------------------------
DROP TABLE IF EXISTS `attr`;
CREATE TABLE `attr` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '属性ID',
  `name` varchar(50) default NULL COMMENT '属性名称',
  `sort` tinyint(4) default NULL COMMENT '排序',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='属性表';

-- ----------------------------
-- Records of attr
-- ----------------------------

-- ----------------------------
-- Table structure for `attr_value`
-- ----------------------------
DROP TABLE IF EXISTS `attr_value`;
CREATE TABLE `attr_value` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '属性值ID',
  `attr_id` bigint(20) default NULL COMMENT '属性ID',
  `attr_value` varchar(200) default NULL COMMENT '属性值',
  `attr_value_picture` varchar(100) default NULL COMMENT '默认图片',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='属性值表';

-- ----------------------------
-- Records of attr_value
-- ----------------------------

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '品牌ID',
  `name` varchar(100) default NULL COMMENT '品牌名称',
  `alias` varchar(100) default NULL COMMENT '品牌别名',
  `logo_img` varchar(255) default NULL COMMENT '品牌logo',
  `desc` varchar(100) default NULL COMMENT '品牌简介',
  `brand_sort` smallint(6) default NULL COMMENT '排序',
  `recommend` int(2) default NULL COMMENT '是否推荐置顶',
  `state` int(2) default '0' COMMENT '是否可用,0下架，1上架',
  `active_start` datetime default NULL COMMENT '活动开始时间',
  `active_end` datetime default NULL COMMENT '活动结束日期',
  `active_content` varchar(255) default NULL COMMENT '活动内容',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌表';

-- ----------------------------
-- Records of brand
-- ----------------------------

-- ----------------------------
-- Table structure for `brand_img`
-- ----------------------------
DROP TABLE IF EXISTS `brand_img`;
CREATE TABLE `brand_img` (
  `id` bigint(20) NOT NULL auto_increment COMMENT 'ID',
  `brand_id` bigint(20) NOT NULL COMMENT '商品ID',
  `url` varchar(100) default NULL COMMENT '图片路径',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='品牌图片';

-- ----------------------------
-- Records of brand_img
-- ----------------------------

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '自增id',
  `name` varchar(200) default NULL COMMENT '属性名称',
  `parent_id` bigint(20) default NULL COMMENT '父属性id',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  `brand_new` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类表：家电 >冰箱 >车载冰箱';

-- ----------------------------
-- Records of category
-- ----------------------------

-- ----------------------------
-- Table structure for `feedback`
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '订单详情ID',
  `account_id` bigint(20) default NULL COMMENT '账号id',
  `contact` varchar(100) default NULL COMMENT '联系方式',
  `content` varchar(200) default NULL,
  `creator` bigint(20) default NULL,
  `create_time` datetime default NULL,
  `updator` bigint(20) default NULL,
  `update_time` datetime default NULL,
  `status` varchar(10) default '1',
  `ext1` varchar(200) default NULL,
  `ext2` varchar(200) default NULL,
  `ext3` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='意见反馈';

-- ----------------------------
-- Records of feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '商品ID',
  `name` varchar(100) default NULL COMMENT '商品名称',
  `code` varchar(20) default NULL COMMENT '商品编码',
  `brand_id` bigint(20) NOT NULL COMMENT '商品品牌',
  `price` decimal(12,4) default NULL COMMENT '商品吊牌价',
  `promotion_price` decimal(12,4) default NULL COMMENT '商品促销价',
  `vip_price` decimal(10,0) default NULL COMMENT '会员价',
  `sale_num` int(11) default NULL COMMENT '商品销售数量(记录所有规格的销售数量)',
  `state` tinyint(4) default NULL COMMENT '商品状态0下架，1正常，2违规（禁售）',
  `evaluation_count` int(11) default NULL COMMENT '商品评价数',
  `gain_point` int(11) default NULL COMMENT '获取积分数',
  `auditor` bigint(20) default NULL COMMENT '审核人',
  `audit_time` datetime default NULL COMMENT '审核时间',
  `audit_state` int(11) default NULL COMMENT '审核状态',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '自增id',
  `goods_id` bigint(20) default NULL COMMENT '商品id',
  `category_id` bigint(20) default NULL COMMENT '分类id',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  `brand_new` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品和分类关系表';

-- ----------------------------
-- Records of goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_evaluate`
-- ----------------------------
DROP TABLE IF EXISTS `goods_evaluate`;
CREATE TABLE `goods_evaluate` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '评价ID',
  `order_id` bigint(20) default NULL COMMENT '订单ID',
  `goods_id` bigint(20) default NULL COMMENT '商品ID',
  `evaluate_scoers` tinyint(4) default NULL COMMENT '商品分数',
  `evaluate_content` varchar(200) default NULL COMMENT '评价内容',
  `isanonymous` tinyint(4) default NULL COMMENT '是否匿名',
  `member_id` bigint(20) default NULL COMMENT '买家ID',
  `member_name` varchar(50) default NULL COMMENT '买家名字',
  `evaluate_show` tinyint(4) default NULL COMMENT '是否显示',
  `evaluate_explain` varchar(250) default NULL COMMENT '卖家解释',
  `evaluate_remark` varchar(250) default NULL COMMENT '管理员备注',
  `evaluate_images` varchar(250) default NULL COMMENT '评价晒图',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表(暂时不用)';

-- ----------------------------
-- Records of goods_evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_img`
-- ----------------------------
DROP TABLE IF EXISTS `goods_img`;
CREATE TABLE `goods_img` (
  `id` bigint(20) NOT NULL auto_increment COMMENT 'ID',
  `goods_id` bigint(20) NOT NULL COMMENT '商品ID',
  `url` varchar(100) default NULL COMMENT '图片路径',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品表';

-- ----------------------------
-- Records of goods_img
-- ----------------------------

-- ----------------------------
-- Table structure for `goods_sku`
-- ----------------------------
DROP TABLE IF EXISTS `goods_sku`;
CREATE TABLE `goods_sku` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '属性值ID',
  `goods_id` bigint(20) default NULL COMMENT '商品id',
  `storage_num` bigint(200) default NULL COMMENT '仓库库存量',
  `sale_num` bigint(200) default '0' COMMENT '使用数量',
  `attr_id` bigint(200) default NULL COMMENT '属性id',
  `attr_value_id` bigint(200) default NULL COMMENT '属性值id',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='sku表（最小库存单位）';

-- ----------------------------
-- Records of goods_sku
-- ----------------------------

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '用户ID.主键,自增长',
  `phone` varchar(20) default NULL COMMENT '手机号',
  `password` varchar(40) default NULL COMMENT '密码(必须)',
  `salt` varchar(40) default NULL COMMENT '加密盐',
  `login_ip` varchar(100) default NULL COMMENT '最后登陆IP',
  `email` varchar(100) default NULL COMMENT '邮箱',
  `nickname` varchar(100) default NULL COMMENT '昵称',
  `head_img` varchar(100) default NULL COMMENT '头像',
  `weixin_uid` varchar(100) default NULL COMMENT '微信uid',
  `amount` decimal(10,0) default '0' COMMENT '会员余额',
  `creator` bigint(20) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `state` varchar(1) default '1' COMMENT '状态0未激活，1正常，2锁定',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='账号表';

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for `member_amount_detail`
-- ----------------------------
DROP TABLE IF EXISTS `member_amount_detail`;
CREATE TABLE `member_amount_detail` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '用户ID.主键,自增长',
  `member_id` bigint(20) default NULL COMMENT '会员id',
  `amount` decimal(10,0) default NULL COMMENT '变动金额带正负号',
  `old_amount` decimal(10,0) default NULL COMMENT '变动前总额',
  `reason` varchar(255) default NULL COMMENT '变动原因',
  `creator` bigint(20) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `state` varchar(1) default '1' COMMENT '状态0未激活，1正常，2锁定',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='会员账户变动明细';

-- ----------------------------
-- Records of member_amount_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '消息ID',
  `type` int(20) default NULL COMMENT '消息类型（1、系统消息）',
  `to_member` bigint(20) default NULL COMMENT '收件人',
  `message_title` varchar(50) default NULL COMMENT '标题',
  `message_content` varchar(200) default NULL COMMENT '消息内容',
  `send_time` datetime default NULL COMMENT '发送时间',
  `is_read` tinyint(4) default NULL COMMENT '消息是否已读',
  `read_time` datetime default NULL COMMENT '已读时间',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站内消息';

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for `order`
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '订单ID',
  `order_code` varchar(32) default NULL COMMENT '订单编号',
  `member_id` bigint(20) default NULL COMMENT '买家ID',
  `customer_name` varchar(50) default NULL COMMENT '买家姓名',
  `customer_tel` varchar(255) default NULL COMMENT '联系电话',
  `post_code` varchar(10) default NULL COMMENT '邮编',
  `express_name` varchar(100) default NULL COMMENT '快递公司',
  `express_code` varchar(100) default NULL COMMENT '快递编号',
  `arrive_address` varchar(200) default NULL COMMENT '送货地点',
  `pay_type` tinyint(4) default NULL COMMENT '支付方式',
  `pay_time` datetime default NULL COMMENT '支付时间',
  `order_send_time` datetime default NULL COMMENT '发货时间',
  `order_finnshed_time` datetime default NULL COMMENT '确认收货时间',
  `order_amount` decimal(12,4) default NULL COMMENT '订单总价格(包含运费)',
  `recive_type` tinyint(4) default NULL COMMENT '收货方式',
  `order_status` tinyint(4) NOT NULL default '0' COMMENT '订单状态,(1,待付款，2，已付款，3，卖家已发货，4，买家已经收货，5_，订单取消（51，用户取消，52，商铺取消，53，平台管理员取消），6，交易完成)',
  `refund_status` tinyint(4) default '0' COMMENT '退款状态',
  `refund_amount` decimal(12,4) default NULL COMMENT '退款金额',
  `freight` decimal(10,0) default NULL COMMENT '订单运费',
  `order_from` tinyint(4) default NULL COMMENT '订单来源',
  `order_remark` varchar(200) default NULL COMMENT '订单备注',
  `shipping_code` varchar(32) default NULL COMMENT '订单运单号',
  `order_promotions` varchar(200) default NULL COMMENT '订单优惠信息',
  `creator` bigint(20) default NULL,
  `create_time` datetime default NULL,
  `updator` bigint(20) default NULL,
  `update_time` datetime default NULL,
  `status` varchar(10) default '1',
  `ext1` varchar(200) default NULL,
  `ext2` varchar(200) default NULL,
  `ext3` varchar(200) default NULL,
  PRIMARY KEY  (`id`,`order_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单信息表';

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for `order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '订单详情ID',
  `order_id` bigint(20) default NULL COMMENT '订单ID',
  `brand_name` varchar(20) default NULL COMMENT '品牌',
  `goods_id` bigint(20) default NULL COMMENT '商品ID',
  `goods_attr` varchar(20) default NULL COMMENT '商品属性',
  `goods_attr_val` varchar(20) default NULL COMMENT '商品属性值',
  `goods_name` varchar(50) default NULL COMMENT '商品名称',
  `goods_price` decimal(12,4) default NULL COMMENT '商品价格',
  `promotions_price` decimal(12,4) default NULL COMMENT '商品促销价',
  `goods_number` smallint(6) default NULL COMMENT '商品数量',
  `pay_price` decimal(12,4) default NULL COMMENT '商品成交价',
  `goods_image` varchar(100) default NULL COMMENT '商品图片',
  `return_status` smallint(2) default '0' COMMENT '退货状态0正常，1退款',
  `creator` bigint(20) default NULL,
  `create_time` datetime default NULL,
  `updator` bigint(20) default NULL,
  `update_time` datetime default NULL,
  `status` varchar(10) default '1',
  `ext1` varchar(200) default NULL,
  `ext2` varchar(200) default NULL,
  `ext3` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单详情表';

-- ----------------------------
-- Records of order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `order_pay_detail`
-- ----------------------------
DROP TABLE IF EXISTS `order_pay_detail`;
CREATE TABLE `order_pay_detail` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '订单ID',
  `member_id` bigint(20) default NULL COMMENT '买家ID',
  `order_id` bigint(20) default NULL COMMENT '订单id',
  `pay_code` varchar(255) default NULL COMMENT '支付编号（微信、支付宝支付时有用）',
  `pay_type` tinyint(4) default NULL COMMENT '支付方式(支付宝、微信、账户余额)',
  `pay_time` datetime default NULL COMMENT '支付时间',
  `order_amount` decimal(12,4) default NULL COMMENT '订单总价格(没减优惠的价格)',
  `pay_amount` decimal(12,4) default NULL COMMENT '实际支付金额',
  `creator` bigint(20) default NULL,
  `create_time` datetime default NULL,
  `updator` bigint(20) default NULL,
  `update_time` datetime default NULL,
  `status` varchar(10) default '1',
  `ext1` varchar(200) default NULL,
  `ext2` varchar(200) default NULL,
  `ext3` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单支付明细';

-- ----------------------------
-- Records of order_pay_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `settings_dict`
-- ----------------------------
DROP TABLE IF EXISTS `settings_dict`;
CREATE TABLE `settings_dict` (
  `id` bigint(20) NOT NULL auto_increment,
  `parent_id` int(11) default NULL COMMENT '上级分类id',
  `dict_type` int(2) default NULL COMMENT '字典分类:1代表大分类，2代表子类',
  `name` varchar(20) NOT NULL COMMENT '对应分类名',
  `value` varchar(11) default NULL COMMENT '父类ID，当前表ID',
  `sort` int(11) default NULL COMMENT '同类型排序，大数优先',
  `description` varchar(250) default NULL COMMENT '描述',
  `readonly` int(1) default '0' COMMENT '0:可以编辑删除，1：不可以编辑删除',
  `creator` bigint(11) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `state` varchar(1) default '1' COMMENT '状态0未激活，1正常，2锁定',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类信息字典表';

-- ----------------------------
-- Records of settings_dict
-- ----------------------------
INSERT INTO `settings_dict` VALUES ('1', '0', '1', '上海市', '上海市', '0', '描述', '0', null, '2017-08-18 11:27:26', null, '2017-08-18 11:33:42', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('2', '1', '2', '长宁区', '长宁区', '2', '描述', '0', null, '2017-08-18 11:27:22', null, '2017-08-18 13:55:27', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('3', '0', '1', '案例分类', '案例分类', '1', '案例分类', '1', null, '2017-08-18 10:37:35', null, '2017-08-18 10:37:43', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('4', '3', '2', '宏观与通信', '1', '1', '宏观与通信', '1', null, '2017-08-18 10:38:38', null, '2017-08-18 10:38:41', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('5', '3', '2', '智能连接', '2', '2', '智能连接', '1', null, '2017-08-18 10:48:39', null, '2017-08-18 10:48:45', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('6', '3', '2', '智慧家庭', '3', '3', '智慧家庭', '1', null, '2017-08-18 10:51:30', null, '2017-08-18 10:51:32', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('9', '1', '2', '嘉定区', '嘉定区', '1', '嘉定区', '1', '1', '2017-08-18 13:43:25', '1', '2017-08-18 13:43:25', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('10', '1', '2', '宝山区', '宝山区', '0', '宝山区', '0', '1', '2017-08-18 14:05:12', '1', '2017-08-18 14:05:12', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('11', '3', '2', '新型ICT', '4', '4', '新型ICT', '1', '1', '2017-08-18 16:25:52', '1', '2017-08-18 16:25:56', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('12', '3', '2', '互联网金融', '5', '5', '互联网金融', '1', '1', '2017-08-18 16:26:19', '1', '2017-08-18 16:26:22', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('13', '3', '2', '物联网', '6', '6', '物联网', '1', '1', '2017-08-18 16:26:40', '1', '2017-08-18 16:26:42', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('14', '0', '1', '案例类别', '案例类别', '2', '案例类别', '0', '1', '2017-08-18 16:37:01', '1', '2017-08-18 16:37:04', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('15', '14', '2', '生态布局', '1', '1', '生态布局', '0', '1', '2017-08-18 16:37:31', '1', '2017-08-18 16:37:34', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('16', '14', '2', '网络基础建设', '2', '2', '网络基础建设', '1', '1', '2017-08-18 16:38:02', '1', '2017-08-18 16:38:04', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('17', '14', '2', '产品开发', '3', '3', '产品开发', '1', '1', '2017-08-18 16:38:22', '1', '2017-08-18 16:38:25', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('18', '14', '2', '测试', '4', '4', '测试', '1', '1', '2017-08-18 16:38:41', '1', '2017-08-18 16:38:44', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('19', '14', '2', '销售', '5', '5', '销售', '1', '1', '2017-08-18 16:39:02', '1', '2017-08-18 16:39:04', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('20', '14', '2', '运营', '6', '6', '运营', '1', '1', '2017-08-18 16:39:21', '1', '2017-08-18 16:39:24', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('21', '14', '2', '评估', '7', '7', '评估', '1', '1', '2017-08-18 16:39:40', '1', '2017-08-18 16:39:42', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('22', '0', '1', '案例信息渠道来源', '案例信息渠道来源', '3', '案例信息渠道来源', '0', '1', '2017-08-18 16:40:58', '1', '2017-08-18 16:41:01', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('23', '22', '2', '省公司', '1', '1', '省公司', '1', '1', '2017-08-18 16:41:30', '1', '2017-08-18 16:41:33', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('24', '22', '2', '专业公司', '2', '2', '专业公司', '1', '1', '2017-08-18 16:41:51', '1', '2017-08-18 16:41:54', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('25', '22', '2', '研究院', '3', '3', '研究院', '1', '1', '2017-08-18 16:42:10', '1', '2017-08-18 16:42:12', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('26', '22', '2', '创新大赛', '4', '4', '创新大赛', '1', '1', '2017-08-18 16:42:27', '1', '2017-08-18 16:42:30', '1', null, null, null, '1');
INSERT INTO `settings_dict` VALUES ('27', '22', '2', '公开渠道', '5', '5', '公开渠道', '1', '1', '2017-08-18 16:42:54', '1', '2017-08-18 16:42:56', '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '购物车ID',
  `member_id` bigint(20) default NULL COMMENT '买家ID',
  `goods_id` bigint(20) default NULL COMMENT '商品id',
  `goods_sku_id` bigint(20) default NULL COMMENT '商品ID',
  `goods_num` int(11) default NULL COMMENT '商品数量',
  `creator` bigint(20) default NULL COMMENT '创建人',
  `create_time` datetime default NULL COMMENT '创建时间',
  `updator` bigint(20) default NULL COMMENT '记录更新人',
  `update_time` datetime default NULL COMMENT '记录更新时间',
  `status` varchar(10) default '1' COMMENT '记录状态.1，正常，0删除',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(200) default NULL COMMENT '扩展字段2',
  `ext3` varchar(200) default NULL COMMENT '扩展字段3',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_account`
-- ----------------------------
DROP TABLE IF EXISTS `sys_account`;
CREATE TABLE `sys_account` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '用户ID.主键,自增长',
  `username` varchar(20) default NULL COMMENT '唯一，用户名(必须)',
  `password` varchar(40) default NULL COMMENT '密码(必须)',
  `salt` varchar(40) default NULL COMMENT '加密盐',
  `login_ip` varchar(100) default NULL COMMENT '最后登陆IP',
  `creator` bigint(20) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `state` varchar(1) default '1' COMMENT '状态0未激活，1正常，2锁定',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='人员表';

-- ----------------------------
-- Records of sys_account
-- ----------------------------
INSERT INTO `sys_account` VALUES ('1', 'root', '99ab1eba4a2951646a0ad14d98f832bf', '07e2fcc5dde7adb4411a', null, null, '2017-03-14 16:37:26', '1', '2017-03-16 10:48:04', '1', null, null, null, '1');
INSERT INTO `sys_account` VALUES ('24', 'xiongyuankun', '99ab1eba4a2951646a0ad14d98f832bf', '07e2fcc5dde7adb4411a', null, null, '2017-12-13 12:55:18', '1', '2017-12-28 15:46:43', '1', null, null, null, '1');
INSERT INTO `sys_account` VALUES ('25', 'diaodongmei', 'db999684dea8623c7a47e41e2e40c21e', 'ebf67febcc8af198256a', null, null, '2017-12-15 13:04:45', null, '2017-12-15 13:04:45', '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_account_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_account_role`;
CREATE TABLE `sys_account_role` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '关系ID.主键自动增长',
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `account_id` int(11) NOT NULL COMMENT '用户ID',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `creator` bigint(11) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '记录状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户角色关联关系表';

-- ----------------------------
-- Records of sys_account_role
-- ----------------------------
INSERT INTO `sys_account_role` VALUES ('1', '1', '1', null, null, null, null, null, null, null, '1');
INSERT INTO `sys_account_role` VALUES ('17', '8', '12', '1', '2017-11-27 11:44:42', '1', '2017-11-27 11:44:42', null, null, null, '1');
INSERT INTO `sys_account_role` VALUES ('18', '1', '24', '1', '2017-12-28 15:46:43', '1', '2017-12-28 15:46:43', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL auto_increment,
  `type` char(2) default '1' COMMENT '类型,10:接口同步，21：新增，22:编辑，23:删除',
  `title` varchar(255) default '' COMMENT '日志标题',
  `content` text COMMENT '日志内容',
  `remote_addr` varchar(255) default NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) default NULL COMMENT '用户代理',
  `request_uri` varchar(255) default NULL COMMENT '请求URI',
  `method` varchar(5) default NULL COMMENT '操作方式，GET/POST',
  `params` varchar(0) default NULL COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  `username` varchar(255) default NULL COMMENT '操作人',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `creator` bigint(11) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '记录状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='系统日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('289', '1', '查看字典表', '于13:42执行SettingDictController.toSettingDictList方法，13:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:42:43', '1', '2017-08-18 13:42:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('290', '1', '查看字典表', '于13:42执行SettingDictController.toSettingDictList方法，13:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:42:51', '1', '2017-08-18 13:42:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('291', '1', '查看字典表', '于13:42执行SettingDictController.toSettingDictList方法，13:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:42:52', '1', '2017-08-18 13:42:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('292', '1', '查看字典表', '于13:43执行SettingDictController.toSettingDictList方法，13:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:43:27', '1', '2017-08-18 13:43:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('293', '1', '查看字典表', '于13:46执行SettingDictController.toSettingDictList方法，13:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:46:23', '1', '2017-08-18 13:46:23', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('294', '1', '查看字典表', '于13:47执行SettingDictController.toSettingDictList方法，13:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:47:44', '1', '2017-08-18 13:47:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('295', '1', '查看字典表', '于13:48执行SettingDictController.toSettingDictList方法，13:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:48:31', '1', '2017-08-18 13:48:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('296', '1', '查看字典表', '于13:49执行SettingDictController.toSettingDictList方法，13:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:49:22', '1', '2017-08-18 13:49:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('297', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:04', '1', '2017-08-18 13:50:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('298', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:26', '1', '2017-08-18 13:50:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('299', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:27', '1', '2017-08-18 13:50:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('300', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:40', '1', '2017-08-18 13:50:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('301', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:49', '1', '2017-08-18 13:50:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('302', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:51', '1', '2017-08-18 13:50:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('303', '1', '查看字典表', '于13:50执行SettingDictController.toSettingDictList方法，13:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:50:57', '1', '2017-08-18 13:50:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('304', '1', '查看字典表', '于13:53执行SettingDictController.toSettingDictList方法，13:53执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:53:55', '1', '2017-08-18 13:53:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('305', '1', '查看字典表', '于13:55执行SettingDictController.toSettingDictList方法，13:55执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:55:16', '1', '2017-08-18 13:55:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('306', '1', '查看字典表', '于13:55执行SettingDictController.toSettingDictList方法，13:55执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:55:17', '1', '2017-08-18 13:55:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('307', '1', '查看字典表', '于13:55执行SettingDictController.toSettingDictList方法，13:55执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:55:32', '1', '2017-08-18 13:55:32', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('308', '1', '查看字典表', '于13:59执行SettingDictController.toSettingDictList方法，13:59执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:59:46', '1', '2017-08-18 13:59:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('309', '1', '查看字典表', '于13:59执行SettingDictController.toSettingDictList方法，13:59执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 13:59:58', '1', '2017-08-18 13:59:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('310', '1', '查看字典表', '于14:00执行SettingDictController.toSettingDictList方法，14:00执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:00:01', '1', '2017-08-18 14:00:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('311', '1', '查看字典表', '于14:00执行SettingDictController.toSettingDictList方法，14:00执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:00:08', '1', '2017-08-18 14:00:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('312', '1', '查看字典表', '于14:03执行SettingDictController.toSettingDictList方法，14:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:03:08', '1', '2017-08-18 14:03:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('313', '1', '查看字典表', '于14:04执行SettingDictController.toSettingDictList方法，14:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:04:39', '1', '2017-08-18 14:04:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('314', '1', '查看字典表', '于14:04执行SettingDictController.toSettingDictList方法，14:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:04:49', '1', '2017-08-18 14:04:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('315', '1', '查看字典表', '于14:05执行SettingDictController.toSettingDictList方法，14:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:05:13', '1', '2017-08-18 14:05:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('316', '1', '查看字典表', '于14:08执行SettingDictController.toSettingDictList方法，14:08执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:08:52', '1', '2017-08-18 14:08:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('317', '1', '查看字典表', '于14:08执行SettingDictController.toSettingDictList方法，14:08执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:08:57', '1', '2017-08-18 14:08:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('318', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:02', '1', '2017-08-18 14:13:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('319', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:05', '1', '2017-08-18 14:13:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('320', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:17', '1', '2017-08-18 14:13:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('321', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:19', '1', '2017-08-18 14:13:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('322', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:49', '1', '2017-08-18 14:13:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('323', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:50', '1', '2017-08-18 14:13:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('324', '1', '查看字典表', '于14:13执行SettingDictController.toSettingDictList方法，14:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:13:52', '1', '2017-08-18 14:13:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('325', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:00', '1', '2017-08-18 14:14:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('326', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:01', '1', '2017-08-18 14:14:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('327', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:02', '1', '2017-08-18 14:14:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('328', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:06', '1', '2017-08-18 14:14:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('329', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:07', '1', '2017-08-18 14:14:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('330', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:29', '1', '2017-08-18 14:14:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('331', '1', '查看字典表', '于14:14执行SettingDictController.toSettingDictList方法，14:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:14:39', '1', '2017-08-18 14:14:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('332', '1', '查看字典表', '于14:18执行SettingDictController.toSettingDictList方法，14:18执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:18:16', '1', '2017-08-18 14:18:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('333', '1', '查看字典表', '于14:18执行SettingDictController.toSettingDictList方法，14:18执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:18:18', '1', '2017-08-18 14:18:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('334', '1', '查看字典表', '于14:18执行SettingDictController.toSettingDictList方法，14:18执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:18:22', '1', '2017-08-18 14:18:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('335', '1', '查看权限列表', '于14:42执行SysPowerController.toAccountList方法，14:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:42:37', '1', '2017-08-18 14:42:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('336', '1', '查看权限列表', '于14:42执行SysPowerController.toAccountList方法，14:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:42:44', '1', '2017-08-18 14:42:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('337', '1', '查看角色列表', '于14:42执行SysRoleController.toRoleList方法，14:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:42:56', '1', '2017-08-18 14:42:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('338', '1', '查看权限列表', '于14:42执行SysPowerController.toAccountList方法，14:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:42:59', '1', '2017-08-18 14:42:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('339', '1', '查看角色列表', '于14:43执行SysRoleController.toRoleList方法，14:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:43:02', '1', '2017-08-18 14:43:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('340', '1', '查看权限列表', '于14:43执行SysPowerController.toAccountList方法，14:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:43:08', '1', '2017-08-18 14:43:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('341', '1', '查看权限列表', '于14:43执行SysPowerController.toAccountList方法，14:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:43:17', '1', '2017-08-18 14:43:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('342', '1', '查看权限列表', '于14:43执行SysPowerController.toAccountList方法，14:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:43:41', '1', '2017-08-18 14:43:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('343', '1', '查看权限列表', '于14:44执行SysPowerController.toAccountList方法，14:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:44:27', '1', '2017-08-18 14:44:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('344', '1', '查看字典表', '于14:44执行SettingDictController.toSettingDictList方法，14:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:44:52', '1', '2017-08-18 14:44:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('345', '1', '查看权限列表', '于14:47执行SysPowerController.toAccountList方法，14:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:47:51', '1', '2017-08-18 14:47:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('346', '1', '查看权限列表', '于14:48执行SysPowerController.toAccountList方法，14:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:48:01', '1', '2017-08-18 14:48:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('347', '1', '查看权限列表', '于14:48执行SysPowerController.toAccountList方法，14:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:48:03', '1', '2017-08-18 14:48:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('348', '1', '查看权限列表', '于14:48执行SysPowerController.toAccountList方法，14:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:48:58', '1', '2017-08-18 14:48:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('349', '1', '查看权限列表', '于14:49执行SysPowerController.toAccountList方法，14:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:49:03', '1', '2017-08-18 14:49:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('350', '1', '查看权限列表', '于14:49执行SysPowerController.toAccountList方法，14:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:49:17', '1', '2017-08-18 14:49:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('351', '1', '查看字典表', '于14:48执行SettingDictController.toSettingDictList方法，14:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:48:35', '1', '2017-08-18 14:48:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('352', '1', '查看权限列表', '于14:51执行SysPowerController.toAccountList方法，14:51执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:51:38', '1', '2017-08-18 14:51:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('353', '1', '查看权限列表', '于14:53执行SysPowerController.toAccountList方法，14:53执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:53:59', '1', '2017-08-18 14:53:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('354', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:29', '1', '2017-08-18 14:54:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('355', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:41', '1', '2017-08-18 14:54:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('356', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:42', '1', '2017-08-18 14:54:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('357', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:43', '1', '2017-08-18 14:54:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('358', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:43', '1', '2017-08-18 14:54:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('359', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:43', '1', '2017-08-18 14:54:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('360', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:44', '1', '2017-08-18 14:54:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('361', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:44', '1', '2017-08-18 14:54:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('362', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:44', '1', '2017-08-18 14:54:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('363', '1', '查看权限列表', '于14:54执行SysPowerController.toAccountList方法，14:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:54:44', '1', '2017-08-18 14:54:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('364', '1', '查看账号列表', '于14:56执行SysAccountController.toAccountList方法，14:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:56:10', '1', '2017-08-18 14:56:10', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('365', '1', '查看角色列表', '于14:56执行SysRoleController.toRoleList方法，14:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:56:12', '1', '2017-08-18 14:56:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('366', '1', '查看权限列表', '于14:56执行SysPowerController.toAccountList方法，14:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:56:12', '1', '2017-08-18 14:56:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('367', '1', '查看字典表', '于14:56执行SettingDictController.toSettingDictList方法，14:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:56:13', '1', '2017-08-18 14:56:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('368', '1', '查看账号列表', '于14:56执行SysAccountController.toAccountList方法，14:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 14:56:15', '1', '2017-08-18 14:56:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('369', '1', '查看账号列表', '于15:39执行SysAccountController.toAccountList方法，15:39执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 15:39:06', '1', '2017-08-18 15:39:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('370', '1', '查看字典表', '于17:03执行SettingDictController.toSettingDictList方法，17:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-18 17:03:47', '1', '2017-08-18 17:03:47', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('371', '1', '查看字典表', '于09:52执行SettingDictController.toSettingDictList方法，09:52执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 09:52:17', '1', '2017-08-21 09:52:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('372', '1', '查看字典表', '于11:14执行SettingDictController.toSettingDictList方法，11:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 11:14:26', '1', '2017-08-21 11:14:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('373', '1', '查看字典表', '于11:14执行SettingDictController.toSettingDictList方法，11:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 11:14:31', '1', '2017-08-21 11:14:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('374', '1', '查看字典表', '于11:21执行SettingDictController.toSettingDictList方法，11:21执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 11:21:32', '1', '2017-08-21 11:21:32', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('375', '1', '查看字典表', '于13:39执行SettingDictController.toSettingDictList方法，13:39执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 13:39:57', '1', '2017-08-21 13:39:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('376', '1', '查看案例列表', '于14:23执行CaseDataController.toCaseList方法，14:23执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 14:23:19', '1', '2017-08-21 14:23:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('377', '1', '查看案例列表', '于16:01执行CaseDataController.toCaseList方法，16:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:01:09', '1', '2017-08-21 16:01:09', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('378', '1', '查看案例列表', '于16:23执行CaseDataController.toCaseList方法，16:23执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:23:43', '1', '2017-08-21 16:23:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('379', '1', '查看案例列表', '于16:23执行CaseDataController.toCaseList方法，16:23执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:23:57', '1', '2017-08-21 16:23:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('380', '1', '查看案例列表', '于16:24执行CaseDataController.toCaseList方法，16:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:24:02', '1', '2017-08-21 16:24:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('381', '1', '查看案例列表', '于16:24执行CaseDataController.toCaseList方法，16:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:24:07', '1', '2017-08-21 16:24:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('382', '1', '查看案例列表', '于16:24执行CaseDataController.toCaseList方法，16:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:24:56', '1', '2017-08-21 16:24:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('383', '1', '查看案例列表', '于16:25执行CaseDataController.toCaseList方法，16:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:25:53', '1', '2017-08-21 16:25:53', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('384', '1', '查看案例列表', '于16:25执行CaseDataController.toCaseList方法，16:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:25:58', '1', '2017-08-21 16:25:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('385', '1', '查看案例列表', '于16:26执行CaseDataController.toCaseList方法，16:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:26:14', '1', '2017-08-21 16:26:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('386', '1', '查看案例列表', '于16:26执行CaseDataController.toCaseList方法，16:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:26:18', '1', '2017-08-21 16:26:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('387', '1', '查看案例列表', '于16:26执行CaseDataController.toCaseList方法，16:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:26:25', '1', '2017-08-21 16:26:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('388', '1', '查看案例列表', '于16:26执行CaseDataController.toCaseList方法，16:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:26:29', '1', '2017-08-21 16:26:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('389', '1', '查看案例列表', '于16:27执行CaseDataController.toCaseList方法，16:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:27:45', '1', '2017-08-21 16:27:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('390', '1', '查看案例列表', '于16:28执行CaseDataController.toCaseList方法，16:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:28:23', '1', '2017-08-21 16:28:23', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('391', '1', '查看案例列表', '于16:28执行CaseDataController.toCaseList方法，16:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:28:30', '1', '2017-08-21 16:28:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('392', '1', '查看案例列表', '于16:28执行CaseDataController.toCaseList方法，16:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:28:52', '1', '2017-08-21 16:28:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('393', '1', '查看案例列表', '于16:32执行CaseDataController.toCaseList方法，16:32执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:32:57', '1', '2017-08-21 16:32:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('394', '1', '查看案例列表', '于16:35执行CaseDataController.toCaseList方法，16:35执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:35:04', '1', '2017-08-21 16:35:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('395', '1', '查看案例列表', '于16:35执行CaseDataController.toCaseList方法，16:35执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:35:30', '1', '2017-08-21 16:35:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('396', '1', '查看案例列表', '于16:35执行CaseDataController.toCaseList方法，16:35执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:35:33', '1', '2017-08-21 16:35:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('397', '1', '查看案例列表', '于16:36执行CaseDataController.toCaseList方法，16:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:36:02', '1', '2017-08-21 16:36:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('398', '1', '查看案例列表', '于16:36执行CaseDataController.toCaseList方法，16:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:36:03', '1', '2017-08-21 16:36:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('399', '1', '查看案例列表', '于16:36执行CaseDataController.toCaseList方法，16:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:36:21', '1', '2017-08-21 16:36:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('400', '1', '查看案例列表', '于16:37执行CaseDataController.toCaseList方法，16:37执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:37:13', '1', '2017-08-21 16:37:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('401', '1', '查看案例列表', '于16:40执行CaseDataController.toCaseList方法，16:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:40:31', '1', '2017-08-21 16:40:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('402', '1', '查看案例列表', '于16:40执行CaseDataController.toCaseList方法，16:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:40:40', '1', '2017-08-21 16:40:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('403', '1', '查看案例列表', '于16:40执行CaseDataController.toCaseList方法，16:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:40:41', '1', '2017-08-21 16:40:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('404', '1', '查看案例列表', '于16:40执行CaseDataController.toCaseList方法，16:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:40:42', '1', '2017-08-21 16:40:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('405', '1', '查看案例列表', '于16:40执行CaseDataController.toCaseList方法，16:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:40:43', '1', '2017-08-21 16:40:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('406', '1', '查看案例列表', '于16:41执行CaseDataController.toCaseList方法，16:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:41:04', '1', '2017-08-21 16:41:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('407', '1', '查看案例列表', '于16:45执行CaseDataController.toCaseList方法，16:45执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:45:06', '1', '2017-08-21 16:45:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('408', '1', '查看案例列表', '于16:46执行CaseDataController.toCaseList方法，16:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:46:09', '1', '2017-08-21 16:46:09', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('409', '1', '查看案例列表', '于16:46执行CaseDataController.toCaseList方法，16:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:46:13', '1', '2017-08-21 16:46:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('410', '1', '查看案例列表', '于16:47执行CaseDataController.toCaseList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:47:24', '1', '2017-08-21 16:47:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('411', '1', '查看案例列表', '于16:48执行CaseDataController.toCaseList方法，16:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:48:24', '1', '2017-08-21 16:48:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('412', '1', '查看案例列表', '于16:48执行CaseDataController.toCaseList方法，16:48执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:48:42', '1', '2017-08-21 16:48:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('413', '1', '查看案例列表', '于16:49执行CaseDataController.toCaseList方法，16:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:49:11', '1', '2017-08-21 16:49:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('414', '1', '查看案例列表', '于16:49执行CaseDataController.toCaseList方法，16:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:49:15', '1', '2017-08-21 16:49:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('415', '1', '查看案例列表', '于16:49执行CaseDataController.toCaseList方法，16:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:49:49', '1', '2017-08-21 16:49:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('416', '1', '查看案例列表', '于16:49执行CaseDataController.toCaseList方法，16:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:49:55', '1', '2017-08-21 16:49:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('417', '1', '查看案例列表', '于16:49执行CaseDataController.toCaseList方法，16:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:49:57', '1', '2017-08-21 16:49:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('418', '1', '查看案例列表', '于16:51执行CaseDataController.toCaseList方法，16:51执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:51:40', '1', '2017-08-21 16:51:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('419', '1', '查看案例列表', '于16:51执行CaseDataController.toCaseList方法，16:51执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:51:43', '1', '2017-08-21 16:51:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('420', '1', '查看案例列表', '于16:51执行CaseDataController.toCaseList方法，16:51执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:51:56', '1', '2017-08-21 16:51:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('421', '1', '查看案例列表', '于16:54执行CaseDataController.toCaseList方法，16:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:54:20', '1', '2017-08-21 16:54:20', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('422', '1', '查看案例列表', '于16:54执行CaseDataController.toCaseList方法，16:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:54:24', '1', '2017-08-21 16:54:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('423', '1', '查看案例列表', '于16:54执行CaseDataController.toCaseList方法，16:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:54:30', '1', '2017-08-21 16:54:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('424', '1', '查看案例列表', '于16:54执行CaseDataController.toCaseList方法，16:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:54:41', '1', '2017-08-21 16:54:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('425', '1', '查看案例列表', '于16:54执行CaseDataController.toCaseList方法，16:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:54:44', '1', '2017-08-21 16:54:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('426', '1', '查看案例列表', '于16:56执行CaseDataController.toCaseList方法，16:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 16:56:01', '1', '2017-08-21 16:56:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('427', '1', '查看案例列表', '于17:01执行CaseDataController.toCaseList方法，17:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:01:04', '1', '2017-08-21 17:01:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('428', '1', '查看案例列表', '于17:27执行CaseDataController.toCaseList方法，17:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:27:05', '1', '2017-08-21 17:27:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('429', '1', '查看案例列表', '于17:27执行CaseDataController.toCaseList方法，17:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:27:29', '1', '2017-08-21 17:27:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('430', '1', '查看案例列表', '于17:27执行CaseDataController.toCaseList方法，17:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:27:39', '1', '2017-08-21 17:27:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('431', '1', '查看案例列表', '于17:27执行CaseDataController.toCaseList方法，17:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:27:54', '1', '2017-08-21 17:27:54', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('432', '1', '查看案例列表', '于17:28执行CaseDataController.toCaseList方法，17:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:28:03', '1', '2017-08-21 17:28:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('433', '1', '查看案例列表', '于17:28执行CaseDataController.toCaseList方法，17:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:28:54', '1', '2017-08-21 17:28:54', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('434', '1', '查看案例列表', '于17:29执行CaseDataController.toCaseList方法，17:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:29:22', '1', '2017-08-21 17:29:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('435', '1', '查看案例列表', '于17:29执行CaseDataController.toCaseList方法，17:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:29:56', '1', '2017-08-21 17:29:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('436', '1', '查看案例列表', '于17:29执行CaseDataController.toCaseList方法，17:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:29:59', '1', '2017-08-21 17:29:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('437', '1', '查看案例列表', '于17:30执行CaseDataController.toCaseList方法，17:30执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:30:29', '1', '2017-08-21 17:30:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('438', '1', '查看案例列表', '于17:30执行CaseDataController.toCaseList方法，17:30执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:30:51', '1', '2017-08-21 17:30:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('439', '1', '查看案例列表', '于17:31执行CaseDataController.toCaseList方法，17:31执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:31:18', '1', '2017-08-21 17:31:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('440', '1', '查看案例列表', '于17:31执行CaseDataController.toCaseList方法，17:31执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:31:29', '1', '2017-08-21 17:31:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('441', '1', '查看案例列表', '于17:33执行CaseDataController.toCaseList方法，17:33执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:33:38', '1', '2017-08-21 17:33:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('442', '1', '查看案例列表', '于17:34执行CaseDataController.toCaseList方法，17:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:34:44', '1', '2017-08-21 17:34:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('443', '1', '查看案例列表', '于17:34执行CaseDataController.toCaseList方法，17:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:34:51', '1', '2017-08-21 17:34:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('444', '1', '查看案例列表', '于17:35执行CaseDataController.toCaseList方法，17:35执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:35:45', '1', '2017-08-21 17:35:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('445', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:09', '1', '2017-08-21 17:36:09', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('446', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:22', '1', '2017-08-21 17:36:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('447', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:32', '1', '2017-08-21 17:36:32', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('448', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:41', '1', '2017-08-21 17:36:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('449', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:56', '1', '2017-08-21 17:36:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('450', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:58', '1', '2017-08-21 17:36:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('451', '1', '查看案例列表', '于17:36执行CaseDataController.toCaseList方法，17:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:36:59', '1', '2017-08-21 17:36:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('452', '1', '查看案例列表', '于17:37执行CaseDataController.toCaseList方法，17:37执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:37:00', '1', '2017-08-21 17:37:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('453', '1', '查看案例列表', '于17:38执行CaseDataController.toCaseList方法，17:38执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:38:31', '1', '2017-08-21 17:38:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('454', '1', '查看案例列表', '于17:38执行CaseDataController.toCaseList方法，17:38执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:38:41', '1', '2017-08-21 17:38:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('455', '1', '查看案例列表', '于17:40执行CaseDataController.toCaseList方法，17:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:40:01', '1', '2017-08-21 17:40:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('456', '1', '查看案例列表', '于17:40执行CaseDataController.toCaseList方法，17:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:40:07', '1', '2017-08-21 17:40:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('457', '1', '查看案例列表', '于17:40执行CaseDataController.toCaseList方法，17:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:40:14', '1', '2017-08-21 17:40:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('458', '1', '查看案例列表', '于17:40执行CaseDataController.toCaseList方法，17:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:40:17', '1', '2017-08-21 17:40:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('459', '1', '查看案例列表', '于17:41执行CaseDataController.toCaseList方法，17:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:41:15', '1', '2017-08-21 17:41:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('460', '1', '查看案例列表', '于17:41执行CaseDataController.toCaseList方法，17:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:41:50', '1', '2017-08-21 17:41:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('461', '1', '查看案例列表', '于17:42执行CaseDataController.toCaseList方法，17:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:42:52', '1', '2017-08-21 17:42:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('462', '1', '查看案例列表', '于17:43执行CaseDataController.toCaseList方法，17:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:43:24', '1', '2017-08-21 17:43:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('463', '1', '查看案例列表', '于17:43执行CaseDataController.toCaseList方法，17:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:43:27', '1', '2017-08-21 17:43:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('464', '1', '查看案例列表', '于17:44执行CaseDataController.toCaseList方法，17:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:44:01', '1', '2017-08-21 17:44:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('465', '1', '查看案例列表', '于17:44执行CaseDataController.toCaseList方法，17:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:44:04', '1', '2017-08-21 17:44:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('466', '1', '查看案例列表', '于17:44执行CaseDataController.toCaseList方法，17:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:44:19', '1', '2017-08-21 17:44:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('467', '1', '查看案例列表', '于17:44执行CaseDataController.toCaseList方法，17:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:44:46', '1', '2017-08-21 17:44:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('468', '1', '查看案例列表', '于17:46执行CaseDataController.toCaseList方法，17:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:46:38', '1', '2017-08-21 17:46:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('469', '1', '查看案例列表', '于17:46执行CaseDataController.toCaseList方法，17:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:46:42', '1', '2017-08-21 17:46:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('470', '1', '查看案例列表', '于17:46执行CaseDataController.toCaseList方法，17:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:46:45', '1', '2017-08-21 17:46:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('471', '1', '查看案例列表', '于17:49执行CaseDataController.toCaseList方法，17:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:49:15', '1', '2017-08-21 17:49:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('472', '1', '查看案例列表', '于17:49执行CaseDataController.toCaseList方法，17:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:49:19', '1', '2017-08-21 17:49:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('473', '1', '查看案例列表', '于17:54执行CaseDataController.toCaseList方法，17:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:54:06', '1', '2017-08-21 17:54:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('474', '1', '查看案例列表', '于17:54执行CaseDataController.toCaseList方法，17:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:54:10', '1', '2017-08-21 17:54:10', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('475', '1', '查看案例列表', '于17:54执行CaseDataController.toCaseList方法，17:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:54:16', '1', '2017-08-21 17:54:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('476', '1', '查看案例列表', '于17:54执行CaseDataController.toCaseList方法，17:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:54:18', '1', '2017-08-21 17:54:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('477', '1', '查看案例列表', '于17:54执行CaseDataController.toCaseList方法，17:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:54:19', '1', '2017-08-21 17:54:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('478', '1', '查看案例列表', '于17:54执行CaseDataController.toCaseList方法，17:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:54:25', '1', '2017-08-21 17:54:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('479', '1', '查看案例列表', '于17:55执行CaseDataController.toCaseList方法，17:55执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:55:15', '1', '2017-08-21 17:55:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('480', '1', '查看案例列表', '于17:55执行CaseDataController.toCaseList方法，17:55执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:55:18', '1', '2017-08-21 17:55:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('481', '1', '查看案例列表', '于17:56执行CaseDataController.toCaseList方法，17:56执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:56:14', '1', '2017-08-21 17:56:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('482', '1', '查看案例列表', '于17:57执行CaseDataController.toCaseList方法，17:57执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:57:18', '1', '2017-08-21 17:57:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('483', '1', '查看案例列表', '于17:57执行CaseDataController.toCaseList方法，17:57执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 17:57:20', '1', '2017-08-21 17:57:20', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('484', '1', '查看案例列表', '于18:27执行CaseDataController.toCaseList方法，18:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:27:45', '1', '2017-08-21 18:27:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('485', '1', '查看案例列表', '于18:27执行CaseDataController.toCaseList方法，18:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:27:46', '1', '2017-08-21 18:27:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('486', '1', '查看案例列表', '于18:28执行CaseDataController.toCaseList方法，18:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:28:26', '1', '2017-08-21 18:28:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('487', '1', '查看案例列表', '于18:40执行CaseDataController.toCaseList方法，18:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:40:27', '1', '2017-08-21 18:40:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('488', '1', '查看案例列表', '于18:41执行CaseDataController.toCaseList方法，18:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:41:29', '1', '2017-08-21 18:41:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('489', '1', '查看案例列表', '于18:42执行CaseDataController.toCaseList方法，18:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:42:22', '1', '2017-08-21 18:42:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('490', '1', '查看案例列表', '于18:42执行CaseDataController.toCaseList方法，18:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:42:31', '1', '2017-08-21 18:42:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('491', '1', '查看案例列表', '于18:58执行CaseDataController.toCaseList方法，18:58执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 18:58:50', '1', '2017-08-21 18:58:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('492', '1', '查看案例列表', '于19:00执行CaseDataController.toCaseList方法，19:00执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 19:00:31', '1', '2017-08-21 19:00:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('493', '1', '查看案例列表', '于19:00执行CaseDataController.toCaseList方法，19:00执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 19:00:33', '1', '2017-08-21 19:00:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('494', '1', '查看案例列表', '于19:00执行CaseDataController.toCaseList方法，19:00执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-21 19:00:34', '1', '2017-08-21 19:00:34', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('495', '1', '查看案例列表', '于10:05执行CaseDataController.toCaseList方法，10:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 10:05:56', '1', '2017-08-22 10:05:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('496', '1', '查看案例列表', '于10:28执行CaseDataController.toCaseList方法，10:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 10:28:33', '1', '2017-08-22 10:28:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('497', '1', '查看案例列表', '于10:28执行CaseDataController.toCaseList方法，10:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 10:28:36', '1', '2017-08-22 10:28:36', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('498', '1', '查看案例列表', '于10:44执行CaseDataController.toCaseList方法，10:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 10:44:12', '1', '2017-08-22 10:44:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('499', '1', '查看案例列表', '于13:43执行CaseDataController.toCaseList方法，13:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 13:43:02', '1', '2017-08-22 13:43:02', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('500', '1', '查看案例列表', '于14:24执行CaseDataController.toCaseList方法，14:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 14:24:49', '1', '2017-08-22 14:24:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('501', '1', '查看案例列表', '于14:55执行CaseDataController.toCaseList方法，14:55执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 14:55:30', '1', '2017-08-22 14:55:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('502', '1', '查看案例列表', '于15:05执行CaseDataController.toCaseList方法，15:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:05:11', '1', '2017-08-22 15:05:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('503', '1', '查看案例列表', '于15:15执行CaseDataController.toCaseList方法，15:15执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:15:59', '1', '2017-08-22 15:15:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('504', '1', '查看案例列表', '于15:16执行CaseDataController.toCaseList方法，15:16执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:16:26', '1', '2017-08-22 15:16:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('505', '1', '查看案例列表', '于15:16执行CaseDataController.toCaseList方法，15:16执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:16:43', '1', '2017-08-22 15:16:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('506', '1', '查看案例列表', '于15:16执行CaseDataController.toCaseList方法，15:16执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:16:48', '1', '2017-08-22 15:16:48', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('507', '1', '查看案例列表', '于15:18执行CaseDataController.toCaseList方法，15:18执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:18:17', '1', '2017-08-22 15:18:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('508', '1', '查看案例列表', '于15:18执行CaseDataController.toCaseList方法，15:18执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:18:21', '1', '2017-08-22 15:18:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('509', '1', '查看案例列表', '于15:21执行CaseDataController.toCaseList方法，15:21执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:21:22', '1', '2017-08-22 15:21:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('510', '1', '查看案例列表', '于15:21执行CaseDataController.toCaseList方法，15:21执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:21:38', '1', '2017-08-22 15:21:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('511', '1', '查看案例列表', '于15:22执行CaseDataController.toCaseList方法，15:22执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:22:17', '1', '2017-08-22 15:22:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('512', '1', '查看案例列表', '于15:22执行CaseDataController.toCaseList方法，15:22执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:22:19', '1', '2017-08-22 15:22:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('513', '1', '查看案例列表', '于15:23执行CaseDataController.toCaseList方法，15:23执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:23:35', '1', '2017-08-22 15:23:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('514', '1', '查看案例列表', '于15:23执行CaseDataController.toCaseList方法，15:23执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:23:37', '1', '2017-08-22 15:23:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('515', '1', '查看案例列表', '于15:27执行CaseDataController.toCaseList方法，15:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:27:27', '1', '2017-08-22 15:27:27', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('516', '1', '查看案例列表', '于15:27执行CaseDataController.toCaseList方法，15:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:27:45', '1', '2017-08-22 15:27:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('517', '1', '查看案例列表', '于15:27执行CaseDataController.toCaseList方法，15:27执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 15:27:50', '1', '2017-08-22 15:27:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('518', '1', '查看案例列表', '于16:05执行CaseDataController.toCaseList方法，16:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:05:40', '1', '2017-08-22 16:05:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('519', '1', '查看案例列表', '于16:06执行CaseDataController.toCaseList方法，16:06执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:06:56', '1', '2017-08-22 16:06:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('520', '1', '查看案例列表', '于16:07执行CaseDataController.toCaseList方法，16:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:07:05', '1', '2017-08-22 16:07:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('521', '1', '查看案例列表', '于16:07执行CaseDataController.toCaseList方法，16:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:07:07', '1', '2017-08-22 16:07:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('522', '1', '查看案例列表', '于16:31执行CaseDataController.toCaseList方法，16:31执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:31:59', '1', '2017-08-22 16:31:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('523', '1', '查看案例列表', '于16:32执行CaseDataController.toCaseList方法，16:32执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:32:43', '1', '2017-08-22 16:32:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('524', '1', '查看案例列表', '于16:33执行CaseDataController.toCaseList方法，16:33执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:33:34', '1', '2017-08-22 16:33:34', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('525', '1', '查看案例列表', '于16:34执行CaseDataController.toCaseList方法，16:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:34:32', '1', '2017-08-22 16:34:32', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('526', '1', '查看案例列表', '于16:36执行CaseDataController.toCaseList方法，16:36执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:36:57', '1', '2017-08-22 16:36:57', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('527', '1', '查看案例列表', '于16:37执行CaseDataController.toCaseList方法，16:37执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:37:00', '1', '2017-08-22 16:37:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('528', '1', '查看案例列表', '于16:37执行CaseDataController.toCaseList方法，16:37执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:37:04', '1', '2017-08-22 16:37:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('529', '1', '查看案例列表', '于16:41执行CaseDataController.toCaseList方法，16:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:41:53', '1', '2017-08-22 16:41:53', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('530', '1', '查看案例列表', '于16:45执行CaseDataController.toCaseList方法，16:45执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:45:25', '1', '2017-08-22 16:45:25', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('531', '1', '查看案例列表', '于16:45执行CaseDataController.toCaseList方法，16:45执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:45:30', '1', '2017-08-22 16:45:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('532', '1', '查看案例列表', '于16:45执行CaseDataController.toCaseList方法，16:45执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:45:50', '1', '2017-08-22 16:45:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('533', '1', '查看案例列表', '于16:46执行CaseDataController.toCaseList方法，16:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:46:07', '1', '2017-08-22 16:46:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('534', '1', '查看案例列表', '于16:46执行CaseDataController.toCaseList方法，16:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 16:46:10', '1', '2017-08-22 16:46:10', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('535', '1', '查看案例列表', '于17:47执行CaseDataController.toCaseList方法，17:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-22 17:47:32', '1', '2017-08-22 17:47:32', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('536', '1', '查看字典表', '于10:34执行SettingDictController.toSettingDictList方法，10:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 10:34:30', '1', '2017-08-23 10:34:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('537', '1', '查看字典表', '于11:42执行SettingDictController.toSettingDictList方法，11:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 11:42:30', '1', '2017-08-23 11:42:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('538', '1', '查看字典表', '于11:42执行SettingDictController.toSettingDictList方法，11:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 11:42:33', '1', '2017-08-23 11:42:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('539', '1', '查看字典表', '于11:42执行SettingDictController.toSettingDictList方法，11:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 11:42:56', '1', '2017-08-23 11:42:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('540', '1', '查看案例列表', '于11:43执行CaseDataController.toCaseList方法，11:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 11:43:37', '1', '2017-08-23 11:43:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('541', '1', '查看字典表', '于15:25执行SettingDictController.toSettingDictList方法，15:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 15:25:14', '1', '2017-08-23 15:25:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('542', '1', '退出', '于16:44执行ShiroDbRealm.onLogout方法，16:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:44:38', '1', '2017-08-23 16:44:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('543', '1', '查看案例列表', '于16:47执行CaseDataController.toCaseList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:47:45', '1', '2017-08-23 16:47:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('544', '1', '查看案例列表', '于16:47执行CaseDataController.toCaseList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:47:47', '1', '2017-08-23 16:47:47', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('545', '1', '查看案例列表', '于16:47执行CaseDataController.toCaseList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:47:49', '1', '2017-08-23 16:47:49', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('546', '1', '退出', '于16:49执行ShiroDbRealm.onLogout方法，16:49执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:49:46', '1', '2017-08-23 16:49:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('547', '1', '查看案例列表', '于16:57执行CaseDataController.toCaseList方法，16:57执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:57:28', '1', '2017-08-23 16:57:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('548', '1', '查看案例列表', '于16:58执行CaseDataController.toCaseList方法，16:58执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 16:58:11', '1', '2017-08-23 16:58:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('549', '1', '查看字典表', '于17:01执行SettingDictController.toSettingDictList方法，17:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:01:10', '1', '2017-08-23 17:01:10', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('550', '1', '查看字典表', '于17:01执行SettingDictController.toSettingDictList方法，17:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:01:30', '1', '2017-08-23 17:01:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('551', '1', '查看字典表', '于17:01执行SettingDictController.toSettingDictList方法，17:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:01:38', '1', '2017-08-23 17:01:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('552', '1', '查看字典表', '于17:03执行SettingDictController.toSettingDictList方法，17:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:03:26', '1', '2017-08-23 17:03:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('553', '1', '查看字典表', '于17:01执行SettingDictController.toSettingDictList方法，17:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:01:54', '1', '2017-08-23 17:01:54', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('554', '1', '查看字典表', '于17:01执行SettingDictController.toSettingDictList方法，17:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:02:00', '1', '2017-08-23 17:02:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('555', '1', '查看字典表', '于17:02执行SettingDictController.toSettingDictList方法，17:02执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:02:55', '1', '2017-08-23 17:02:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('556', '1', '查看字典表', '于17:03执行SettingDictController.toSettingDictList方法，17:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:03:39', '1', '2017-08-23 17:03:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('557', '1', '查看字典表', '于17:03执行SettingDictController.toSettingDictList方法，17:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:03:40', '1', '2017-08-23 17:03:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('558', '1', '查看案例列表', '于17:03执行CaseDataController.toCaseList方法，17:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:03:56', '1', '2017-08-23 17:03:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('559', '1', '查看案例列表', '于17:04执行CaseDataController.toCaseList方法，17:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:04:03', '1', '2017-08-23 17:04:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('560', '1', '查看字典表', '于17:04执行SettingDictController.toSettingDictList方法，17:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:04:16', '1', '2017-08-23 17:04:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('561', '1', '查看字典表', '于17:04执行SettingDictController.toSettingDictList方法，17:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:04:26', '1', '2017-08-23 17:04:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('562', '1', '查看字典表', '于17:04执行SettingDictController.toSettingDictList方法，17:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:04:53', '1', '2017-08-23 17:04:53', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('563', '1', '查看字典表', '于17:04执行SettingDictController.toSettingDictList方法，17:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:04:54', '1', '2017-08-23 17:04:54', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('564', '1', '查看字典表', '于17:05执行SettingDictController.toSettingDictList方法，17:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:05:03', '1', '2017-08-23 17:05:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('565', '1', '查看字典表', '于17:05执行SettingDictController.toSettingDictList方法，17:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:05:14', '1', '2017-08-23 17:05:14', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('566', '1', '查看字典表', '于17:05执行SettingDictController.toSettingDictList方法，17:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:05:16', '1', '2017-08-23 17:05:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('567', '1', '查看案例列表', '于17:24执行CaseDataController.toCaseList方法，17:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:24:08', '1', '2017-08-23 17:24:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('568', '1', '查看案例列表', '于17:26执行CaseDataController.toCaseList方法，17:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:26:30', '1', '2017-08-23 17:26:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('569', '1', '查看案例列表', '于17:26执行CaseDataController.toCaseList方法，17:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:26:33', '1', '2017-08-23 17:26:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('570', '1', '查看案例列表', '于17:28执行CaseDataController.toCaseList方法，17:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:28:41', '1', '2017-08-23 17:28:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('571', '1', '查看案例列表', '于17:28执行CaseDataController.toCaseList方法，17:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:28:43', '1', '2017-08-23 17:28:43', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('572', '1', '查看案例列表', '于17:28执行CaseDataController.toCaseList方法，17:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:28:44', '1', '2017-08-23 17:28:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('573', '1', '查看字典表', '于17:29执行SettingDictController.toSettingDictList方法，17:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:29:07', '1', '2017-08-23 17:29:07', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('574', '1', '查看字典表', '于17:29执行SettingDictController.toSettingDictList方法，17:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:29:09', '1', '2017-08-23 17:29:09', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('575', '1', '查看字典表', '于17:29执行SettingDictController.toSettingDictList方法，17:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 17:29:12', '1', '2017-08-23 17:29:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('576', '1', '查看案例列表', '于18:02执行CaseDataController.toCaseList方法，18:02执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:02:41', '1', '2017-08-23 18:02:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('577', '1', '查看案例列表', '于18:04执行CaseDataController.toCaseList方法，18:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:04:04', '1', '2017-08-23 18:04:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('578', '1', '查看案例列表', '于18:04执行CaseDataController.toCaseList方法，18:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:04:16', '1', '2017-08-23 18:04:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('579', '1', '查看案例列表', '于18:05执行CaseDataController.toCaseList方法，18:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:05:42', '1', '2017-08-23 18:05:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('580', '1', '查看案例列表', '于18:05执行CaseDataController.toCaseList方法，18:05执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:05:44', '1', '2017-08-23 18:05:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('581', '1', '查看案例列表', '于18:06执行CaseDataController.toCaseList方法，18:06执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:06:04', '1', '2017-08-23 18:06:04', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('582', '1', '查看案例列表', '于18:07执行CaseDataController.toCaseList方法，18:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:07:26', '1', '2017-08-23 18:07:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('583', '1', '查看字典表', '于18:07执行SettingDictController.toSettingDictList方法，18:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:07:33', '1', '2017-08-23 18:07:33', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('584', '1', '查看字典表', '于18:07执行SettingDictController.toSettingDictList方法，18:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:07:35', '1', '2017-08-23 18:07:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('585', '1', '查看字典表', '于18:07执行SettingDictController.toSettingDictList方法，18:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:07:40', '1', '2017-08-23 18:07:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('586', '1', '查看字典表', '于18:07执行SettingDictController.toSettingDictList方法，18:07执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:07:47', '1', '2017-08-23 18:07:47', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('587', '1', '查看字典表', '于18:29执行SettingDictController.toSettingDictList方法，18:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:29:09', '1', '2017-08-23 18:29:09', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('588', '1', '查看字典表', '于18:33执行SettingDictController.toSettingDictList方法，18:33执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:33:00', '1', '2017-08-23 18:33:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('589', '1', '查看案例列表', '于18:47执行CaseDataController.toCaseList方法，18:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:47:12', '1', '2017-08-23 18:47:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('590', '1', '查看案例列表', '于18:47执行CaseDataController.toCaseList方法，18:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-23 18:47:21', '1', '2017-08-23 18:47:21', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('591', '1', '查看案例列表', '于09:29执行CaseDataController.toCaseList方法，09:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 09:29:48', '1', '2017-08-24 09:29:48', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('592', '1', '查看案例列表', '于09:59执行CaseDataController.toCaseList方法，09:59执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 09:59:55', '1', '2017-08-24 09:59:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('593', '1', '查看案例列表', '于13:38执行CaseDataController.toCaseList方法，13:38执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:38:10', '1', '2017-08-24 13:38:10', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('594', '1', '查看字典表', '于13:38执行SettingDictController.toSettingDictList方法，13:38执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:38:23', '1', '2017-08-24 13:38:23', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('595', '1', '查看字典表', '于13:42执行SettingDictController.toSettingDictList方法，13:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:42:55', '1', '2017-08-24 13:42:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('596', '1', '查看案例列表', '于13:46执行CaseDataController.toCaseList方法，13:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:46:56', '1', '2017-08-24 13:46:56', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('597', '1', '查看字典表', '于13:52执行SettingDictController.toSettingDictList方法，13:52执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:52:16', '1', '2017-08-24 13:52:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('598', '1', '查看字典表', '于13:52执行SettingDictController.toSettingDictList方法，13:52执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:52:38', '1', '2017-08-24 13:52:38', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('599', '1', '查看案例列表', '于13:53执行CaseDataController.toCaseList方法，13:53执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 13:53:50', '1', '2017-08-24 13:53:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('600', '1', '查看字典表', '于14:04执行SettingDictController.toSettingDictList方法，14:04执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 14:04:39', '1', '2017-08-24 14:04:39', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('601', '1', '查看案例列表', '于14:11执行CaseDataController.toCaseList方法，14:11执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 14:11:15', '1', '2017-08-24 14:11:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('602', '1', '查看案例列表', '于14:11执行CaseDataController.toCaseList方法，14:11执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 14:11:23', '1', '2017-08-24 14:11:23', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('603', '1', '查看字典表', '于14:10执行SettingDictController.toSettingDictList方法，14:10执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 14:10:31', '1', '2017-08-24 14:10:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('604', '1', '查看字典表', '于14:32执行SettingDictController.toSettingDictList方法，14:32执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 14:32:11', '1', '2017-08-24 14:32:11', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('605', '1', '查看字典表', '于14:32执行SettingDictController.toSettingDictList方法，14:32执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 14:32:13', '1', '2017-08-24 14:32:13', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('606', '1', '查看字典表', '于15:37执行SettingDictController.toSettingDictList方法，15:37执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 15:37:55', '1', '2017-08-24 15:37:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('607', '1', '查看案例列表', '于15:38执行CaseDataController.toCaseList方法，15:38执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 15:38:30', '1', '2017-08-24 15:38:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('608', '1', '查看案例列表', '于15:43执行CaseDataController.toCaseList方法，15:43执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 15:43:40', '1', '2017-08-24 15:43:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('609', '1', '查看案例列表', '于15:52执行CaseDataController.toCaseList方法，15:52执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 15:52:08', '1', '2017-08-24 15:52:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('610', '1', '查看案例列表', '于15:57执行CaseDataController.toCaseList方法，15:57执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 15:57:35', '1', '2017-08-24 15:57:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('611', '1', '查看案例列表', '于15:57执行CaseDataController.toCaseList方法，15:57执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 15:57:37', '1', '2017-08-24 15:57:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('612', '1', '查看案例列表', '于16:18执行CaseDataController.toCaseList方法，16:18执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 16:18:35', '1', '2017-08-24 16:18:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('613', '1', '查看案例列表', '于16:25执行CaseDataController.toCaseList方法，16:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 16:25:15', '1', '2017-08-24 16:25:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('614', '1', '查看案例列表', '于16:25执行CaseDataController.toCaseList方法，16:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 16:25:20', '1', '2017-08-24 16:25:20', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('615', '1', '查看案例列表', '于16:25执行CaseDataController.toCaseList方法，16:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 16:25:22', '1', '2017-08-24 16:25:22', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('616', '1', '查看案例列表', '于16:29执行CaseDataController.toCaseList方法，16:29执行完毕', null, null, null, null, null, null, 'root', '1', '2017-08-24 16:29:17', '1', '2017-08-24 16:29:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('617', '1', '查看字典表', '于14:24执行SettingDictController.toSettingDictList方法，14:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 14:24:06', '1', '2017-09-27 14:24:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('618', '1', '退出', '于14:25执行ShiroDbRealm.onLogout方法，14:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 14:25:55', '1', '2017-09-27 14:25:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('619', '1', '查看字典表', '于16:08执行SettingDictController.toSettingDictList方法，16:08执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:08:30', '1', '2017-09-27 16:08:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('620', '1', '查看字典表', '于16:08执行SettingDictController.toSettingDictList方法，16:08执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:08:31', '1', '2017-09-27 16:08:31', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('621', '1', '查看字典表', '于16:12执行SettingDictController.toSettingDictList方法，16:12执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:12:46', '1', '2017-09-27 16:12:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('622', '1', '查看字典表', '于16:14执行SettingDictController.toSettingDictList方法，16:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:14:15', '1', '2017-09-27 16:14:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('623', '1', '查看字典表', '于16:14执行SettingDictController.toSettingDictList方法，16:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:14:16', '1', '2017-09-27 16:14:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('624', '1', '查看字典表', '于16:14执行SettingDictController.toSettingDictList方法，16:14执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:14:17', '1', '2017-09-27 16:14:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('625', '1', '查看字典表', '于16:32执行SettingDictController.toSettingDictList方法，16:32执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:32:52', '1', '2017-09-27 16:32:52', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('626', '1', '查看字典表', '于16:34执行SettingDictController.toSettingDictList方法，16:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:34:16', '1', '2017-09-27 16:34:16', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('627', '1', '查看字典表', '于16:45执行SettingDictController.toSettingDictList方法，16:45执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:45:05', '1', '2017-09-27 16:45:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('628', '1', '查看字典表', '于16:47执行SettingDictController.toSettingDictList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:47:41', '1', '2017-09-27 16:47:41', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('629', '1', '查看字典表', '于16:47执行SettingDictController.toSettingDictList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 16:47:45', '1', '2017-09-27 16:47:45', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('630', '1', '查看字典表', '于17:02执行SettingDictController.toSettingDictList方法，17:02执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:02:53', '1', '2017-09-27 17:02:53', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('631', '1', '退出', '于17:25执行ShiroDbRealm.onLogout方法，17:25执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:25:58', '1', '2017-09-27 17:25:58', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('632', '1', '退出', '于17:26执行ShiroDbRealm.onLogout方法，17:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:26:19', '1', '2017-09-27 17:26:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('633', '1', '退出', '于17:32执行ShiroDbRealm.onLogout方法，17:32执行完毕', null, null, null, null, null, null, 'xiongyuankun', '12', '2017-09-27 17:32:03', '12', '2017-09-27 17:32:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('634', '1', '查看字典表', '于17:34执行SettingDictController.toSettingDictList方法，17:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:34:37', '1', '2017-09-27 17:34:37', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('635', '1', '查看字典表', '于17:34执行SettingDictController.toSettingDictList方法，17:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:34:42', '1', '2017-09-27 17:34:42', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('636', '1', '查看字典表', '于17:34执行SettingDictController.toSettingDictList方法，17:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:34:46', '1', '2017-09-27 17:34:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('637', '1', '查看字典表', '于17:35执行SettingDictController.toSettingDictList方法，17:35执行完毕', null, null, null, null, null, null, 'root', '1', '2017-09-27 17:35:18', '1', '2017-09-27 17:35:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('638', '1', '退出', '于10:50执行ShiroDbRealm.onLogout方法，10:50执行完毕', null, null, null, null, null, null, 'root', '1', '2017-10-12 10:50:29', '1', '2017-10-12 10:50:29', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('639', '1', '退出', '于10:57执行ShiroDbRealm.onLogout方法，10:57执行完毕', null, null, null, null, null, null, 'root', '1', '2017-10-12 10:57:18', '1', '2017-10-12 10:57:18', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('640', '1', '退出', '于16:17执行ShiroDbRealm.onLogout方法，16:17执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-13 16:17:12', '1', '2017-11-13 16:17:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('641', '1', '退出', '于17:44执行ShiroDbRealm.onLogout方法，17:44执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-13 17:44:36', '1', '2017-11-13 17:44:36', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('642', '1', '退出', '于17:03执行ShiroDbRealm.onLogout方法，17:03执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-23 17:03:00', '1', '2017-11-23 17:03:00', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('643', '1', '查看字典表', '于17:13执行SettingDictController.toSettingDictList方法，17:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-23 17:13:34', '1', '2017-11-23 17:13:34', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('644', '1', '查看字典表', '于17:46执行SettingDictController.toSettingDictList方法，17:46执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-23 17:46:06', '1', '2017-11-23 17:46:06', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('645', '1', '退出', '于10:40执行ShiroDbRealm.onLogout方法，10:40执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-24 10:40:08', '1', '2017-11-24 10:40:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('646', '1', '退出', '于10:41执行ShiroDbRealm.onLogout方法，10:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-24 10:41:28', '1', '2017-11-24 10:41:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('647', '1', '查看字典表', '于15:13执行SettingDictController.toSettingDictList方法，15:13执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-24 15:13:59', '1', '2017-11-24 15:13:59', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('648', '1', '查看字典表', '于17:53执行SettingDictController.toSettingDictList方法，17:53执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-27 17:53:26', '1', '2017-11-27 17:53:26', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('649', '1', '查看字典表', '于17:53执行SettingDictController.toSettingDictList方法，17:53执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-27 17:53:35', '1', '2017-11-27 17:53:35', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('650', '1', '查看字典表', '于18:01执行SettingDictController.toSettingDictList方法，18:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-27 18:01:55', '1', '2017-11-27 18:01:55', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('651', '1', '查看字典表', '于18:28执行SettingDictController.toSettingDictList方法，18:28执行完毕', null, null, null, null, null, null, 'root', '1', '2017-11-28 18:28:12', '1', '2017-11-28 18:28:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('652', '1', '查看字典表', '于18:34执行SettingDictController.toSettingDictList方法，18:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-01 18:34:05', '1', '2017-12-01 18:34:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('653', '1', '查看字典表', '于16:38执行SettingDictController.toSettingDictList方法，16:38执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-11 16:38:24', '1', '2017-12-11 16:38:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('654', '1', '查看字典表', '于16:42执行SettingDictController.toSettingDictList方法，16:42执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-11 16:42:15', '1', '2017-12-11 16:42:15', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('655', '1', '查看字典表', '于16:47执行SettingDictController.toSettingDictList方法，16:47执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-11 16:47:30', '1', '2017-12-11 16:47:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('656', '1', '查看字典表', '于13:54执行SettingDictController.toSettingDictList方法，13:54执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-13 13:54:24', '1', '2017-12-13 13:54:24', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('657', '1', '查看字典表', '于16:41执行SettingDictController.toSettingDictList方法，16:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-18 16:41:46', '1', '2017-12-18 16:41:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('658', '1', '查看字典表', '于16:41执行SettingDictController.toSettingDictList方法，16:41执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-18 16:41:51', '1', '2017-12-18 16:41:51', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('659', '1', '查看字典表', '于18:24执行SettingDictController.toSettingDictList方法，18:24执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-21 18:24:44', '1', '2017-12-21 18:24:44', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('660', '1', '查看字典表', '于18:26执行SettingDictController.toSettingDictList方法，18:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-21 18:26:08', '1', '2017-12-21 18:26:08', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('661', '1', '查看字典表', '于18:26执行SettingDictController.toSettingDictList方法，18:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-21 18:26:12', '1', '2017-12-21 18:26:12', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('662', '1', '查看字典表', '于18:26执行SettingDictController.toSettingDictList方法，18:26执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-21 18:26:19', '1', '2017-12-21 18:26:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('663', '1', '查看字典表', '于18:34执行SettingDictController.toSettingDictList方法，18:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-21 18:34:28', '1', '2017-12-21 18:34:28', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('664', '1', '查看字典表', '于18:35执行SettingDictController.toSettingDictList方法，18:35执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-21 18:35:54', '1', '2017-12-21 18:35:54', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('665', '1', '查看字典表', '于10:01执行SettingDictController.toSettingDictList方法，10:01执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-22 10:01:50', '1', '2017-12-22 10:01:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('666', '1', '查看字典表', '于14:34执行SettingDictController.toSettingDictList方法，14:34执行完毕', null, null, null, null, null, null, 'root', '1', '2017-12-27 14:34:17', '1', '2017-12-27 14:34:17', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('667', '1', '查看字典表', '于10:44执行SettingDictController.toSettingDictList方法，10:44执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 10:44:30', '24', '2018-01-04 10:44:30', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('668', '1', '查看字典表', '于10:44执行SettingDictController.toSettingDictList方法，10:44执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 10:44:36', '24', '2018-01-04 10:44:36', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('669', '1', '查看字典表', '于11:10执行SettingDictController.toSettingDictList方法，11:10执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:10:40', '24', '2018-01-04 11:10:40', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('670', '1', '查看字典表', '于11:10执行SettingDictController.toSettingDictList方法，11:10执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:10:53', '24', '2018-01-04 11:10:53', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('671', '1', '查看字典表', '于11:11执行SettingDictController.toSettingDictList方法，11:11执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:11:01', '24', '2018-01-04 11:11:01', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('672', '1', '查看字典表', '于11:11执行SettingDictController.toSettingDictList方法，11:11执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:11:03', '24', '2018-01-04 11:11:03', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('673', '1', '查看字典表', '于11:11执行SettingDictController.toSettingDictList方法，11:11执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:11:05', '24', '2018-01-04 11:11:05', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('674', '1', '查看字典表', '于11:11执行SettingDictController.toSettingDictList方法，11:11执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:11:09', '24', '2018-01-04 11:11:09', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('675', '1', '查看字典表', '于11:12执行SettingDictController.toSettingDictList方法，11:12执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:12:46', '24', '2018-01-04 11:12:46', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('676', '1', '查看字典表', '于11:16执行SettingDictController.toSettingDictList方法，11:16执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:16:19', '24', '2018-01-04 11:16:19', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('677', '1', '查看字典表', '于11:16执行SettingDictController.toSettingDictList方法，11:16执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:16:48', '24', '2018-01-04 11:16:48', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('678', '1', '查看字典表', '于11:16执行SettingDictController.toSettingDictList方法，11:16执行完毕', null, null, null, null, null, null, 'xiongyuankun', '24', '2018-01-04 11:16:50', '24', '2018-01-04 11:16:50', null, null, null, '1');
INSERT INTO `sys_log` VALUES ('679', '1', '查看字典表', '于12:56执行SettingDictController.toSettingDictList方法，12:56执行完毕', null, null, null, null, null, null, 'root', '1', '2018-01-09 12:56:37', '1', '2018-01-09 12:56:37', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth`;
CREATE TABLE `sys_oauth` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '用户ID.主键,自增长',
  `base_url` varchar(255) default NULL COMMENT 'baseurl',
  `oauth_url` varchar(255) default NULL,
  `token_url` varchar(255) default NULL COMMENT '换accesstoken的url',
  `oauth_type` varchar(255) default NULL COMMENT '第三方类型qq,weixin,baidu,weibo',
  `client_id` varchar(255) default NULL COMMENT '第三方唯一标志',
  `redirect_uri` varchar(255) default NULL COMMENT '授权成功之后页面',
  `client_secret` varchar(255) default NULL COMMENT 'client_secret',
  `creator` bigint(20) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `state` varchar(1) default '1' COMMENT '状态0未激活，1正常，2锁定',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='第三方平台表';

-- ----------------------------
-- Records of sys_oauth
-- ----------------------------
INSERT INTO `sys_oauth` VALUES ('1', 'https://openapi.baidu.com/rest/2.0/', 'http://openapi.baidu.com/oauth/2.0/authorize', 'https://openapi.baidu.com/oauth/2.0/token', 'baidu', 'yy95YELoq1oTlclR8Vcz0soOq1TNMT7X', 'http://192.168.1.154:8080/base/oauth?oauthType=baidu', 'ae72SclpnkDYSHI5iKsFhwwzdrDmxtfQ', null, '2017-12-12 14:49:01', '1', '2017-12-13 13:04:50', '1', null, null, null, '1');
INSERT INTO `sys_oauth` VALUES ('14', 'https://graph.qq.com/', 'https://graph.qq.com/oauth2.0/authorize', 'https://graph.qq.com/oauth2.0/token', 'qq', 'qqurl', 'http://192.168.1.154:8080/base/oauth?oauthType=qq', 'qqurl', '1', '2017-12-13 13:14:21', '1', '2017-12-15 15:18:14', '1', null, null, null, '1');
INSERT INTO `sys_oauth` VALUES ('15', 'weixin', 'weixin', 'weixin', 'weixin', 'weixin', 'weixin', 'weixin', '1', '2017-12-13 13:15:12', '1', '2017-12-13 13:18:05', '1', null, null, null, '1');
INSERT INTO `sys_oauth` VALUES ('16', 'https://graph.renren.com/', 'https://graph.renren.com/oauth/authorize', 'https://graph.renren.com/oauth/token', 'renren', 'fd2cf0b94d264642bebbad0bf4f7514e', 'http://192.168.1.154:8080/base/oauth?oauthType=renren', '0eb3f732f2e84b26b56a533dc44b5a62', '1', '2017-12-13 13:16:03', '1', '2017-12-15 11:41:16', '1', null, null, null, '1');
INSERT INTO `sys_oauth` VALUES ('17', 'https://api.weibo.com/', 'https://api.weibo.com/oauth2/authorize', 'https://api.weibo.com/oauth2/access_token', 'weibo', '2908813521', 'http://192.168.1.154:8080/base/oauth?oauthType=weibo', 'df9126ce90d7179ae4e95e8c580b45c4', '1', '2017-12-13 13:16:22', '1', '2017-12-20 18:00:22', '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_oauth_account`
-- ----------------------------
DROP TABLE IF EXISTS `sys_oauth_account`;
CREATE TABLE `sys_oauth_account` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '用户ID.主键,自增长',
  `oauth_type` varchar(20) default NULL COMMENT '第三方类型qq,weixin,baidu,weibo',
  `oauth_uid` varchar(40) default NULL COMMENT '第三方唯一标志',
  `account_id` bigint(20) default NULL,
  `creator` bigint(20) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `state` varchar(1) default '1' COMMENT '状态0未激活，1正常，2锁定',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='人员表';

-- ----------------------------
-- Records of sys_oauth_account
-- ----------------------------
INSERT INTO `sys_oauth_account` VALUES ('31', 'weibo', '6084335350', '1', null, '2017-12-21 17:23:20', null, '2017-12-21 17:23:20', '1', null, null, null, '1');
INSERT INTO `sys_oauth_account` VALUES ('33', 'renren', '962240074', '1', null, '2017-12-21 17:42:45', null, '2017-12-21 17:42:45', '1', null, null, null, '1');
INSERT INTO `sys_oauth_account` VALUES ('34', 'baidu', '872882757', '24', null, '2017-12-26 18:04:45', null, '2017-12-26 18:04:45', '1', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_power`
-- ----------------------------
DROP TABLE IF EXISTS `sys_power`;
CREATE TABLE `sys_power` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '权限ID',
  `name` varchar(200) NOT NULL COMMENT '权限名称',
  `flag` varchar(100) NOT NULL COMMENT '权限标识.shiro权限表达式',
  `url` text NOT NULL COMMENT '权限URL',
  `sort` int(11) default NULL COMMENT '权限顺序',
  `layer` int(11) NOT NULL COMMENT '层级1,2,3,4',
  `layer_code` varchar(255) default NULL COMMENT '层级编码',
  `type` int(11) NOT NULL default '1' COMMENT '权限类型.1角色权限 2内容权限',
  `icon` varchar(40) default NULL,
  `parent_id` bigint(11) default NULL COMMENT '上级ID',
  `is_show` int(11) NOT NULL COMMENT '是否显示1 是  0 不是',
  `creator` bigint(11) default NULL,
  `create_time` datetime default NULL,
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '记录状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='权限信息';

-- ----------------------------
-- Records of sys_power
-- ----------------------------
INSERT INTO `sys_power` VALUES ('10', '系统管理', 'sys:manage', '', null, '1', '10', '1', 'fa-desktop', '-1', '1', null, null, null, '2017-05-15 14:20:16', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('20', '系统设置', 'settings:config', ' ', null, '1', '20', '1', 'fa-cog', '-1', '1', '1', null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('30', '流程管理', 'sys:flow', '', null, '1', '30', '1', 'fa-cogs', '-1', '1', '1', '2017-09-27 16:57:37', '30', '2017-09-27 16:57:37', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('40', '示例部分', 'sys:demo', '', null, '1', '40', '1', 'fa-cogs', '-1', '1', '1', '2017-09-27 17:04:17', '40', '2017-09-27 17:04:17', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1001', '角色管理', 'sys:role:list', 'role/toList', null, '2', '10_1001', '1', '', '10', '1', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('1002', '用户管理', 'sys:sysUser:list', 'account/toList', null, '2', '10_1002', '1', '', '10', '1', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('1003', '日志管理', 'sys:sysLog:list', 'sysLog/toList', null, '2', '10_1003', '1', '', '10', '1', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('1004', '字典管理', 'sys:dict:list', 'settingsDict/toList', null, '2', '10_1004', '1', '', '10', '1', null, null, null, '2017-05-15 14:20:18', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1005', '权限管理', 'sys:power', 'power/toList', null, '2', '10_1005', '1', '', '10', '1', null, null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('1006', '222', '111', '', null, '4', '40_4006_4007_1006', '1', '', '4007', '0', '1', '2017-11-23 17:46:26', '1', '2017-11-23 17:48:40', null, null, null, '0');
INSERT INTO `sys_power` VALUES ('2001', '系统配置', 'settings:list', 'settingsConfig/toList', null, '2', '20_2001', '1', null, '20', '1', null, null, null, null, null, null, null, '1');
INSERT INTO `sys_power` VALUES ('3001', '流程部署', 'flow:deploy', 'flow/deployManage', null, '2', '30_3001', '1', '', '30', '1', '1', '2017-09-27 17:01:26', null, '2017-09-27 17:01:26', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4001', 'mui图片缩放功能', 'demo:mui', 'demo/suofang', null, '2', '40_4001', '1', '', '40', '1', '1', '2017-09-27 17:04:57', null, '2017-09-27 17:04:57', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4002', '手机版拍照', 'demo:paizhao', 'demo/paizhao', null, '2', '40_4002', '1', '', '40', '1', '1', '2017-09-27 17:05:46', '20010304', '2017-09-27 17:05:46', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4003', '复杂参数异步请求', 'demo:ajax', 'demo/ajax', null, '2', '40_4003', '1', '', '40', '1', '1', '2017-09-27 17:06:26', '20010305', '2017-09-27 17:06:26', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4004', 'nice_validate文档', 'demo:nic_validate', 'demo/niceValidate', null, '2', '40_4004', '1', '', '40', '1', '1', '2017-09-27 17:06:55', '20010306', '2017-09-27 17:06:55', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4005', 'ueditor实例', 'demo:ueditor', 'demo/ueditor', null, '2', '40_4005', '1', '', '40', '1', '1', '2017-11-13 16:15:51', '1', '2017-11-13 16:15:51', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4006', '示例多层菜单', 'demo:repeat', '', null, '2', '40_4006', '1', '', '40', '1', '1', '2017-11-13 17:43:53', '1', '2017-11-13 17:43:53', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('4007', '三级子菜单', 'demo:threalayer', '', null, '3', '40_4006_4007', '1', '', '4006', '1', '1', '2017-11-13 17:44:33', '1', '2017-11-13 17:44:33', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('100101', '角色新增', 'sys:role:add', '', null, '3', '10_1001_100101', '1', '', '1001', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100102', '角色编辑', 'sys:role:edit', '', null, '3', '10_1001_100102', '1', null, '1001', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100103', '角色删除', 'sys:role:del', '', null, '3', '10_1001_100103', '1', null, '1001', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100104', '授予权限', 'sys:role:power', '', null, '3', '10_1001_100104', '1', null, '1001', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100201', '用户新增', 'sys:sysUser:add', '', null, '3', '10_1002_100201', '1', null, '1002', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100202', '用户编辑', 'sys:sysUser:edit', '', null, '3', '10_1002_100202', '1', null, '1002', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100203', '用户删除', 'sys:sysUser:del', '', null, '3', '10_1002_100203', '1', null, '1002', '0', null, null, null, '2017-05-15 14:20:18', '', '', '', '1');
INSERT INTO `sys_power` VALUES ('100401', '字典新增', 'sys:dict:add', '', null, '3', '10_1004_100401', '1', null, '1004', '0', null, null, null, '2017-05-15 14:20:18', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('100402', '字典编辑', 'sys:dict:edit', '', null, '3', '10_1004_100402', '1', null, '1004', '0', null, null, null, '2017-05-15 14:20:18', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('100403', '字典删除', 'sys:dict:del', '', null, '3', '10_1004_100403', '1', null, '1004', '0', null, null, null, '2017-05-15 14:20:18', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400701', '11', '2222', '', null, '4', null, '1', '', '4007', '0', '1', '2017-11-23 17:32:28', '1', '2017-11-23 17:32:33', null, null, null, '0');
INSERT INTO `sys_power` VALUES ('400702', 'vuejs', 'vuejs', 'demo/vuejs', null, '2', '40_400702', '1', '', '40', '1', '1', '2017-11-24 10:39:27', '1', '2017-11-24 10:39:27', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400703', '日程管理', 'demo:calinder', 'demo/calinder', null, '2', '40_400703', '1', '', '40', '1', '1', '2017-11-28 18:10:28', '1', '2017-11-28 18:10:28', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400704', '测试', 'sys:test', '', null, '3', '10_1001_400704', '1', '', '1001', '1', '1', '2017-11-28 18:36:20', '1', '2017-11-28 18:36:46', null, null, null, '0');
INSERT INTO `sys_power` VALUES ('400705', '测试子节点', 'demo:haha', '', null, '3', '40_4006_400705', '1', '', '4006', '1', '1', '2017-11-28 18:44:13', '1', '2017-11-28 18:44:21', null, null, null, '0');
INSERT INTO `sys_power` VALUES ('400706', '三级子菜单2', 'demo:testTreeLayer', '', null, '3', '40_4006_400706', '1', '', '4006', '1', '1', '2017-11-28 18:44:43', '1', '2017-11-28 18:44:43', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400707', 'echarts', 'demo:echarts', 'demo/echarts', null, '2', '40_400707', '1', '', '40', '1', '1', '2017-12-01 18:25:37', '1', '2017-12-01 18:25:37', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400708', '三方管理', 'sys:oauth', 'oauth/toList', null, '2', '10_400708', '1', '', '10', '1', '1', '2017-12-12 14:43:07', '24', '2018-01-04 10:44:57', null, null, null, '0');
INSERT INTO `sys_power` VALUES ('400709', '即时通信', 'demo.websocket', 'demo/webSocket', null, '2', '40_400709', '1', '', '40', '1', '1', '2017-12-27 15:50:52', '1', '2017-12-27 15:50:52', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400710', '流程启动', 'flow:start', 'flow/flowStart', null, '2', '30_400710', '1', '', '30', '1', '24', '2018-01-05 10:49:54', '24', '2018-01-05 10:49:54', null, null, null, '1');
INSERT INTO `sys_power` VALUES ('400711', '我的任务', 'flow:mytask', 'flow/myTask', null, '2', '30_400711', '1', '', '30', '1', '24', '2018-01-05 10:50:28', '24', '2018-01-05 10:50:28', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL auto_increment COMMENT '角色ID.主键自动增长',
  `name` varchar(32) default NULL COMMENT '角色名称',
  `description` varchar(80) default NULL COMMENT '角色描述',
  `type` int(11) default NULL COMMENT '角色类型.1，权限角色，默认1',
  `role_predef` int(1) default '0' COMMENT '此角色是否系统预定义,1,是，0否',
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `creator` bigint(11) default NULL COMMENT '记录创建人',
  `create_time` datetime default NULL COMMENT '记录创建时间',
  `ext1` varchar(200) default NULL COMMENT '扩展字段1',
  `ext2` varchar(400) default NULL COMMENT '扩展字段2',
  `ext3` text COMMENT '文本扩展字段3',
  `status` tinyint(2) default '1' COMMENT '记录状态，0删除，1有效，默认1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='角色信息';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '超级管理员', '1', '0', null, '2017-03-16 11:39:32', null, null, null, null, null, '1');
INSERT INTO `sys_role` VALUES ('8', '普通管理员', '管理普通任务', null, '0', '1', '2017-08-24 13:52:44', '1', '2017-08-18 10:29:43', null, null, null, '1');

-- ----------------------------
-- Table structure for `sys_role_power`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_power`;
CREATE TABLE `sys_role_power` (
  `id` bigint(20) NOT NULL auto_increment,
  `role_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  `creator` bigint(11) default NULL,
  `create_time` datetime default NULL,
  `updator` bigint(11) default NULL,
  `update_time` datetime default NULL,
  `ext1` varchar(255) character set utf8 default NULL,
  `ext2` varchar(255) character set utf8 default NULL,
  `ext3` varchar(255) character set utf8 default NULL,
  `status` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role_power
-- ----------------------------
INSERT INTO `sys_role_power` VALUES ('1', '8', '10', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('2', '8', '1001', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('3', '8', '100101', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('4', '8', '100102', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('5', '8', '100103', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('6', '8', '100104', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('7', '8', '1002', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('8', '8', '100201', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('9', '8', '100202', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('10', '8', '100203', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('11', '8', '1003', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('12', '8', '1004', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('13', '8', '100401', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('14', '8', '100402', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('15', '8', '100403', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');
INSERT INTO `sys_role_power` VALUES ('16', '8', '1005', '1', '2017-09-27 17:25:54', '1', '2017-09-27 17:25:54', null, null, null, '1');

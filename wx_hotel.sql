/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : wx_hotel

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-08-20 00:23:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute` (
  `attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` smallint(6) DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1关键属性2销售属性',
  `attr_value` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1单选2多选',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES ('206', '54', '款式', '1', '毛衣|开衫|套头衫|打底衫|长款|高领|蝙蝠衫|吊带/背心|其它', '1', '1');
INSERT INTO `attribute` VALUES ('207', '54', '材质', '1', '棉|涤纶|真丝|亚麻|丝光棉|羊毛/羊绒|腈纶/化纤|棉混纺|其它', '1', '2');
INSERT INTO `attribute` VALUES ('208', '54', '价格', '1', '0-99|100-199|200-299|300-399|400-499|500-599|600-999|1000以上', '1', '3');
INSERT INTO `attribute` VALUES ('209', '54', '袖长', '1', '长袖|短袖|七分袖|无袖|五分袖/中袖|九分袖|其它', '1', '4');
INSERT INTO `attribute` VALUES ('210', '54', '风格', '1', '欧美|日韩|OL通勤|休闲|原创设计|百搭|其它', '1', '5');
INSERT INTO `attribute` VALUES ('211', '54', '袖长', '1', '长袖|短袖|七分袖|无袖|九分袖|五分袖/中袖|其它', '1', '1');
INSERT INTO `attribute` VALUES ('212', '54', '花型', '1', '纯色|条纹|格子|千鸟格|波点|拼接|撞色|小碎花|印花/绣花|渐变|豹纹|骷髅|手绘|几何|卡通|字母|脸谱|头像|动物|植物|建筑|其它', '1', '2');
INSERT INTO `attribute` VALUES ('213', '54', '版式', '1', '修身|宽松|直筒|斗篷|其他', '1', '3');
INSERT INTO `attribute` VALUES ('214', '54', '衣长', '1', '短款(35-50CM)|常规款(51-65CM)|中长款(66-80CM)|长款(衣长大于80CM)', '1', '4');
INSERT INTO `attribute` VALUES ('215', '54', '领型', '1', '圆领|V领|立领|翻领/polo领|方领|西装领|荷叶领|娃娃领|连帽/帽领|其它领型|高领', '1', '5');
INSERT INTO `attribute` VALUES ('216', '54', '款式', '1', '套头|开衫|套装', '1', '1');
INSERT INTO `attribute` VALUES ('217', '54', '袖长', '1', '长袖|短袖|七分袖|无袖|九分袖|五分袖/中袖|其它', '1', '2');
INSERT INTO `attribute` VALUES ('218', '54', '花型', '1', '纯色|条纹|格子|千鸟格|波点|拼接|撞色|小碎花|印花/绣花|渐变|豹纹|骷髅|手绘|几何|卡通|字母|脸谱|头像|动物|植物|建筑|其它', '1', '3');
INSERT INTO `attribute` VALUES ('219', '54', '版式', '1', '修身|宽松|直筒|其他', '1', '4');
INSERT INTO `attribute` VALUES ('220', '54', '薄厚', '1', '薄款|普通|加厚|抓绒|棉内胆|毛内胆', '1', '5');

-- ----------------------------
-- Table structure for attribute_value
-- ----------------------------
DROP TABLE IF EXISTS `attribute_value`;
CREATE TABLE `attribute_value` (
  `attr_value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性值id',
  `attr_value_name` varchar(100) NOT NULL COMMENT '属性值名称',
  `attr_id` int(10) unsigned NOT NULL COMMENT '所属属性id',
  `type_id` int(10) unsigned NOT NULL COMMENT '类型id',
  `attr_value_sort` tinyint(1) unsigned NOT NULL COMMENT '属性值排序',
  PRIMARY KEY (`attr_value_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3181 DEFAULT CHARSET=utf8 COMMENT='商品属性值表';

-- ----------------------------
-- Records of attribute_value
-- ----------------------------
INSERT INTO `attribute_value` VALUES ('3050', '毛衣', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3051', '开衫', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3052', '套头衫', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3053', '打底衫', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3054', '长款', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3055', '高领', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3056', '蝙蝠衫', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3057', '吊带/背心', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3058', '其它', '206', '54', '0');
INSERT INTO `attribute_value` VALUES ('3059', '棉', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3060', '涤纶', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3061', '真丝', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3062', '亚麻', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3063', '丝光棉', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3064', '羊毛/羊绒', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3065', '腈纶/化纤', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3066', '棉混纺', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3067', '其它', '207', '54', '0');
INSERT INTO `attribute_value` VALUES ('3068', '0-99', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3069', '100-199', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3070', '200-299', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3071', '300-399', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3072', '400-499', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3073', '500-599', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3074', '600-999', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3075', '1000以上', '208', '54', '0');
INSERT INTO `attribute_value` VALUES ('3076', '长袖', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3077', '短袖', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3078', '七分袖', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3079', '无袖', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3080', '五分袖/中袖', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3081', '九分袖', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3082', '其它', '209', '54', '0');
INSERT INTO `attribute_value` VALUES ('3083', '欧美', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3084', '日韩', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3085', 'OL通勤', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3086', '休闲', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3087', '原创设计', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3088', '百搭', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3089', '其它', '210', '54', '0');
INSERT INTO `attribute_value` VALUES ('3090', '长袖', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3091', '短袖', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3092', '七分袖', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3093', '无袖', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3094', '九分袖', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3095', '五分袖/中袖', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3096', '其它', '211', '54', '0');
INSERT INTO `attribute_value` VALUES ('3097', '纯色', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3098', '条纹', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3099', '格子', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3100', '千鸟格', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3101', '波点', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3102', '拼接', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3103', '撞色', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3104', '小碎花', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3105', '印花/绣花', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3106', '渐变', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3107', '豹纹', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3108', '骷髅', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3109', '手绘', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3110', '几何', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3111', '卡通', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3112', '字母', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3113', '脸谱', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3114', '头像', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3115', '动物', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3116', '植物', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3117', '建筑', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3118', '其它', '212', '54', '0');
INSERT INTO `attribute_value` VALUES ('3119', '修身', '213', '54', '0');
INSERT INTO `attribute_value` VALUES ('3120', '宽松', '213', '54', '0');
INSERT INTO `attribute_value` VALUES ('3121', '直筒', '213', '54', '0');
INSERT INTO `attribute_value` VALUES ('3122', '斗篷', '213', '54', '0');
INSERT INTO `attribute_value` VALUES ('3123', '其他', '213', '54', '0');
INSERT INTO `attribute_value` VALUES ('3124', '短款(35-50CM)', '214', '54', '0');
INSERT INTO `attribute_value` VALUES ('3125', '常规款(51-65CM)', '214', '54', '0');
INSERT INTO `attribute_value` VALUES ('3126', '中长款(66-80CM)', '214', '54', '0');
INSERT INTO `attribute_value` VALUES ('3127', '长款(衣长大于80CM)', '214', '54', '0');
INSERT INTO `attribute_value` VALUES ('3128', '圆领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3129', 'V领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3130', '立领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3131', '翻领/polo领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3132', '方领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3133', '西装领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3134', '荷叶领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3135', '娃娃领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3136', '连帽/帽领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3137', '其它领型', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3138', '高领', '215', '54', '0');
INSERT INTO `attribute_value` VALUES ('3139', '套头', '216', '54', '0');
INSERT INTO `attribute_value` VALUES ('3140', '开衫', '216', '54', '0');
INSERT INTO `attribute_value` VALUES ('3141', '套装', '216', '54', '0');
INSERT INTO `attribute_value` VALUES ('3142', '长袖', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3143', '短袖', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3144', '七分袖', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3145', '无袖', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3146', '九分袖', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3147', '五分袖/中袖', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3148', '其它', '217', '54', '0');
INSERT INTO `attribute_value` VALUES ('3149', '纯色', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3150', '条纹', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3151', '格子', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3152', '千鸟格', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3153', '波点', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3154', '拼接', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3155', '撞色', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3156', '小碎花', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3157', '印花/绣花', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3158', '渐变', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3159', '豹纹', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3160', '骷髅', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3161', '手绘', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3162', '几何', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3163', '卡通', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3164', '字母', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3165', '脸谱', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3166', '头像', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3167', '动物', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3168', '植物', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3169', '建筑', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3170', '其它', '218', '54', '0');
INSERT INTO `attribute_value` VALUES ('3171', '修身', '219', '54', '0');
INSERT INTO `attribute_value` VALUES ('3172', '宽松', '219', '54', '0');
INSERT INTO `attribute_value` VALUES ('3173', '直筒', '219', '54', '0');
INSERT INTO `attribute_value` VALUES ('3174', '其他', '219', '54', '0');
INSERT INTO `attribute_value` VALUES ('3175', '薄款', '220', '54', '0');
INSERT INTO `attribute_value` VALUES ('3176', '普通', '220', '54', '0');
INSERT INTO `attribute_value` VALUES ('3177', '加厚', '220', '54', '0');
INSERT INTO `attribute_value` VALUES ('3178', '抓绒', '220', '54', '0');
INSERT INTO `attribute_value` VALUES ('3179', '棉内胆', '220', '54', '0');
INSERT INTO `attribute_value` VALUES ('3180', '毛内胆', '220', '54', '0');

-- ----------------------------
-- Table structure for common_area
-- ----------------------------
DROP TABLE IF EXISTS `common_area`;
CREATE TABLE `common_area` (
  `code` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_area
-- ----------------------------

-- ----------------------------
-- Table structure for common_city
-- ----------------------------
DROP TABLE IF EXISTS `common_city`;
CREATE TABLE `common_city` (
  `code` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_city
-- ----------------------------
INSERT INTO `common_city` VALUES ('110101', '北京市', '110000');
INSERT INTO `common_city` VALUES ('120100', '天津市', '120000');
INSERT INTO `common_city` VALUES ('130100', '石家庄市', '130000');
INSERT INTO `common_city` VALUES ('130200', '唐山市', '130000');
INSERT INTO `common_city` VALUES ('130300', '秦皇岛市', '130000');
INSERT INTO `common_city` VALUES ('130400', '邯郸市', '130000');
INSERT INTO `common_city` VALUES ('130500', '邢台市', '130000');
INSERT INTO `common_city` VALUES ('130600', '保定市', '130000');
INSERT INTO `common_city` VALUES ('130700', '张家口市', '130000');
INSERT INTO `common_city` VALUES ('130800', '承德市', '130000');
INSERT INTO `common_city` VALUES ('130900', '沧州市', '130000');
INSERT INTO `common_city` VALUES ('131000', '廊坊市', '130000');
INSERT INTO `common_city` VALUES ('131100', '衡水市', '130000');
INSERT INTO `common_city` VALUES ('140100', '太原市', '140000');
INSERT INTO `common_city` VALUES ('140200', '大同市', '140000');
INSERT INTO `common_city` VALUES ('140300', '阳泉市', '140000');
INSERT INTO `common_city` VALUES ('140400', '长治市', '140000');
INSERT INTO `common_city` VALUES ('140500', '晋城市', '140000');
INSERT INTO `common_city` VALUES ('140600', '朔州市', '140000');
INSERT INTO `common_city` VALUES ('140700', '晋中市', '140000');
INSERT INTO `common_city` VALUES ('140800', '运城市', '140000');
INSERT INTO `common_city` VALUES ('140900', '忻州市', '140000');
INSERT INTO `common_city` VALUES ('141000', '临汾市', '140000');
INSERT INTO `common_city` VALUES ('141100', '吕梁市', '140000');
INSERT INTO `common_city` VALUES ('150100', '呼和浩特市', '150000');
INSERT INTO `common_city` VALUES ('150200', '包头市', '150000');
INSERT INTO `common_city` VALUES ('150300', '乌海市', '150000');
INSERT INTO `common_city` VALUES ('150400', '赤峰市', '150000');
INSERT INTO `common_city` VALUES ('150500', '通辽市', '150000');
INSERT INTO `common_city` VALUES ('150600', '鄂尔多斯市', '150000');
INSERT INTO `common_city` VALUES ('150700', '呼伦贝尔市', '150000');
INSERT INTO `common_city` VALUES ('150800', '巴彦淖尔市', '150000');
INSERT INTO `common_city` VALUES ('150900', '乌兰察布市', '150000');
INSERT INTO `common_city` VALUES ('152200', '兴安盟', '150000');
INSERT INTO `common_city` VALUES ('152500', '锡林郭勒盟', '150000');
INSERT INTO `common_city` VALUES ('152900', '阿拉善盟', '150000');
INSERT INTO `common_city` VALUES ('210100', '沈阳市', '210000');
INSERT INTO `common_city` VALUES ('210200', '大连市', '210000');
INSERT INTO `common_city` VALUES ('210300', '鞍山市', '210000');
INSERT INTO `common_city` VALUES ('210400', '抚顺市', '210000');
INSERT INTO `common_city` VALUES ('210500', '本溪市', '210000');
INSERT INTO `common_city` VALUES ('210600', '丹东市', '210000');
INSERT INTO `common_city` VALUES ('210700', '锦州市', '210000');
INSERT INTO `common_city` VALUES ('210800', '营口市', '210000');
INSERT INTO `common_city` VALUES ('210900', '阜新市', '210000');
INSERT INTO `common_city` VALUES ('211000', '辽阳市', '210000');
INSERT INTO `common_city` VALUES ('211100', '盘锦市', '210000');
INSERT INTO `common_city` VALUES ('211200', '铁岭市', '210000');
INSERT INTO `common_city` VALUES ('211300', '朝阳市', '210000');
INSERT INTO `common_city` VALUES ('211400', '葫芦岛市', '210000');
INSERT INTO `common_city` VALUES ('220100', '长春市', '220000');
INSERT INTO `common_city` VALUES ('220200', '吉林市', '220000');
INSERT INTO `common_city` VALUES ('220300', '四平市', '220000');
INSERT INTO `common_city` VALUES ('220400', '辽源市', '220000');
INSERT INTO `common_city` VALUES ('220500', '通化市', '220000');
INSERT INTO `common_city` VALUES ('220600', '白山市', '220000');
INSERT INTO `common_city` VALUES ('220700', '松原市', '220000');
INSERT INTO `common_city` VALUES ('220800', '白城市', '220000');
INSERT INTO `common_city` VALUES ('222400', '延边朝鲜族自治州', '220000');
INSERT INTO `common_city` VALUES ('230100', '哈尔滨市', '230000');
INSERT INTO `common_city` VALUES ('230200', '齐齐哈尔市', '230000');
INSERT INTO `common_city` VALUES ('230300', '鸡西市', '230000');
INSERT INTO `common_city` VALUES ('230400', '鹤岗市', '230000');
INSERT INTO `common_city` VALUES ('230500', '双鸭山市', '230000');
INSERT INTO `common_city` VALUES ('230600', '大庆市', '230000');
INSERT INTO `common_city` VALUES ('230700', '伊春市', '230000');
INSERT INTO `common_city` VALUES ('230800', '佳木斯市', '230000');
INSERT INTO `common_city` VALUES ('230900', '七台河市', '230000');
INSERT INTO `common_city` VALUES ('231000', '牡丹江市', '230000');
INSERT INTO `common_city` VALUES ('231100', '黑河市', '230000');
INSERT INTO `common_city` VALUES ('231200', '绥化市', '230000');
INSERT INTO `common_city` VALUES ('232700', '大兴安岭地区', '230000');
INSERT INTO `common_city` VALUES ('310000', '上海市', '310000');
INSERT INTO `common_city` VALUES ('320100', '南京市', '320000');
INSERT INTO `common_city` VALUES ('320200', '无锡市', '320000');
INSERT INTO `common_city` VALUES ('320300', '徐州市', '320000');
INSERT INTO `common_city` VALUES ('320400', '常州市', '320000');
INSERT INTO `common_city` VALUES ('320500', '苏州市', '320000');
INSERT INTO `common_city` VALUES ('320600', '南通市', '320000');
INSERT INTO `common_city` VALUES ('320700', '连云港市', '320000');
INSERT INTO `common_city` VALUES ('320800', '淮安市', '320000');
INSERT INTO `common_city` VALUES ('320900', '盐城市', '320000');
INSERT INTO `common_city` VALUES ('321000', '扬州市', '320000');
INSERT INTO `common_city` VALUES ('321100', '镇江市', '320000');
INSERT INTO `common_city` VALUES ('321200', '泰州市', '320000');
INSERT INTO `common_city` VALUES ('321300', '宿迁市', '320000');
INSERT INTO `common_city` VALUES ('330100', '杭州市', '330000');
INSERT INTO `common_city` VALUES ('330200', '宁波市', '330000');
INSERT INTO `common_city` VALUES ('330300', '温州市', '330000');
INSERT INTO `common_city` VALUES ('330400', '嘉兴市', '330000');
INSERT INTO `common_city` VALUES ('330500', '湖州市', '330000');
INSERT INTO `common_city` VALUES ('330600', '绍兴市', '330000');
INSERT INTO `common_city` VALUES ('330700', '金华市', '330000');
INSERT INTO `common_city` VALUES ('330800', '衢州市', '330000');
INSERT INTO `common_city` VALUES ('330900', '舟山市', '330000');
INSERT INTO `common_city` VALUES ('331000', '台州市', '330000');
INSERT INTO `common_city` VALUES ('331100', '丽水市', '330000');
INSERT INTO `common_city` VALUES ('340100', '合肥市', '340000');
INSERT INTO `common_city` VALUES ('340200', '芜湖市', '340000');
INSERT INTO `common_city` VALUES ('340300', '蚌埠市', '340000');
INSERT INTO `common_city` VALUES ('340400', '淮南市', '340000');
INSERT INTO `common_city` VALUES ('340500', '马鞍山市', '340000');
INSERT INTO `common_city` VALUES ('340600', '淮北市', '340000');
INSERT INTO `common_city` VALUES ('340700', '铜陵市', '340000');
INSERT INTO `common_city` VALUES ('340800', '安庆市', '340000');
INSERT INTO `common_city` VALUES ('341000', '黄山市', '340000');
INSERT INTO `common_city` VALUES ('341100', '滁州市', '340000');
INSERT INTO `common_city` VALUES ('341200', '阜阳市', '340000');
INSERT INTO `common_city` VALUES ('341300', '宿州市', '340000');
INSERT INTO `common_city` VALUES ('341500', '六安市', '340000');
INSERT INTO `common_city` VALUES ('341600', '亳州市', '340000');
INSERT INTO `common_city` VALUES ('341700', '池州市', '340000');
INSERT INTO `common_city` VALUES ('341800', '宣城市', '340000');
INSERT INTO `common_city` VALUES ('350100', '福州市', '350000');
INSERT INTO `common_city` VALUES ('350200', '厦门市', '350000');
INSERT INTO `common_city` VALUES ('350300', '莆田市', '350000');
INSERT INTO `common_city` VALUES ('350400', '三明市', '350000');
INSERT INTO `common_city` VALUES ('350500', '泉州市', '350000');
INSERT INTO `common_city` VALUES ('350600', '漳州市', '350000');
INSERT INTO `common_city` VALUES ('350700', '南平市', '350000');
INSERT INTO `common_city` VALUES ('350800', '龙岩市', '350000');
INSERT INTO `common_city` VALUES ('350900', '宁德市', '350000');
INSERT INTO `common_city` VALUES ('360100', '南昌市', '360000');
INSERT INTO `common_city` VALUES ('360200', '景德镇市', '360000');
INSERT INTO `common_city` VALUES ('360300', '萍乡市', '360000');
INSERT INTO `common_city` VALUES ('360400', '九江市', '360000');
INSERT INTO `common_city` VALUES ('360500', '新余市', '360000');
INSERT INTO `common_city` VALUES ('360600', '鹰潭市', '360000');
INSERT INTO `common_city` VALUES ('360700', '赣州市', '360000');
INSERT INTO `common_city` VALUES ('360800', '吉安市', '360000');
INSERT INTO `common_city` VALUES ('360900', '宜春市', '360000');
INSERT INTO `common_city` VALUES ('361000', '抚州市', '360000');
INSERT INTO `common_city` VALUES ('361100', '上饶市', '360000');
INSERT INTO `common_city` VALUES ('370100', '济南市', '370000');
INSERT INTO `common_city` VALUES ('370200', '青岛市', '370000');
INSERT INTO `common_city` VALUES ('370300', '淄博市', '370000');
INSERT INTO `common_city` VALUES ('370400', '枣庄市', '370000');
INSERT INTO `common_city` VALUES ('370500', '东营市', '370000');
INSERT INTO `common_city` VALUES ('370600', '烟台市', '370000');
INSERT INTO `common_city` VALUES ('370700', '潍坊市', '370000');
INSERT INTO `common_city` VALUES ('370800', '济宁市', '370000');
INSERT INTO `common_city` VALUES ('370900', '泰安市', '370000');
INSERT INTO `common_city` VALUES ('371000', '威海市', '370000');
INSERT INTO `common_city` VALUES ('371100', '日照市', '370000');
INSERT INTO `common_city` VALUES ('371200', '莱芜市', '370000');
INSERT INTO `common_city` VALUES ('371300', '临沂市', '370000');
INSERT INTO `common_city` VALUES ('371400', '德州市', '370000');
INSERT INTO `common_city` VALUES ('371500', '聊城市', '370000');
INSERT INTO `common_city` VALUES ('371600', '滨州市', '370000');
INSERT INTO `common_city` VALUES ('371700', '菏泽市', '370000');
INSERT INTO `common_city` VALUES ('410100', '郑州市', '410000');
INSERT INTO `common_city` VALUES ('410200', '开封市', '410000');
INSERT INTO `common_city` VALUES ('410300', '洛阳市', '410000');
INSERT INTO `common_city` VALUES ('410400', '平顶山市', '410000');
INSERT INTO `common_city` VALUES ('410500', '安阳市', '410000');
INSERT INTO `common_city` VALUES ('410600', '鹤壁市', '410000');
INSERT INTO `common_city` VALUES ('410700', '新乡市', '410000');
INSERT INTO `common_city` VALUES ('410800', '焦作市', '410000');
INSERT INTO `common_city` VALUES ('410900', '濮阳市', '410000');
INSERT INTO `common_city` VALUES ('411000', '许昌市', '410000');
INSERT INTO `common_city` VALUES ('411100', '漯河市', '410000');
INSERT INTO `common_city` VALUES ('411200', '三门峡市', '410000');
INSERT INTO `common_city` VALUES ('411300', '南阳市', '410000');
INSERT INTO `common_city` VALUES ('411400', '商丘市', '410000');
INSERT INTO `common_city` VALUES ('411500', '信阳市', '410000');
INSERT INTO `common_city` VALUES ('411600', '周口市', '410000');
INSERT INTO `common_city` VALUES ('411700', '驻马店市', '410000');
INSERT INTO `common_city` VALUES ('420100', '武汉市', '420000');
INSERT INTO `common_city` VALUES ('420200', '黄石市', '420000');
INSERT INTO `common_city` VALUES ('420300', '十堰市', '420000');
INSERT INTO `common_city` VALUES ('420500', '宜昌市', '420000');
INSERT INTO `common_city` VALUES ('420600', '襄阳市', '420000');
INSERT INTO `common_city` VALUES ('420700', '鄂州市', '420000');
INSERT INTO `common_city` VALUES ('420800', '荆门市', '420000');
INSERT INTO `common_city` VALUES ('420900', '孝感市', '420000');
INSERT INTO `common_city` VALUES ('421000', '荆州市', '420000');
INSERT INTO `common_city` VALUES ('421100', '黄冈市', '420000');
INSERT INTO `common_city` VALUES ('421200', '咸宁市', '420000');
INSERT INTO `common_city` VALUES ('421300', '随州市', '420000');
INSERT INTO `common_city` VALUES ('422800', '恩施土家族苗族自治州', '420000');
INSERT INTO `common_city` VALUES ('429004', '仙桃市', '420000');
INSERT INTO `common_city` VALUES ('429005', '潜江市', '420000');
INSERT INTO `common_city` VALUES ('429006', '天门市', '420000');
INSERT INTO `common_city` VALUES ('429021', '神农架林区', '420000');
INSERT INTO `common_city` VALUES ('430100', '长沙市', '430000');
INSERT INTO `common_city` VALUES ('430200', '株洲市', '430000');
INSERT INTO `common_city` VALUES ('430300', '湘潭市', '430000');
INSERT INTO `common_city` VALUES ('430400', '衡阳市', '430000');
INSERT INTO `common_city` VALUES ('430500', '邵阳市', '430000');
INSERT INTO `common_city` VALUES ('430600', '岳阳市', '430000');
INSERT INTO `common_city` VALUES ('430700', '常德市', '430000');
INSERT INTO `common_city` VALUES ('430800', '张家界市', '430000');
INSERT INTO `common_city` VALUES ('430900', '益阳市', '430000');
INSERT INTO `common_city` VALUES ('431000', '郴州市', '430000');
INSERT INTO `common_city` VALUES ('431100', '永州市', '430000');
INSERT INTO `common_city` VALUES ('431200', '怀化市', '430000');
INSERT INTO `common_city` VALUES ('431300', '娄底市', '430000');
INSERT INTO `common_city` VALUES ('433100', '湘西土家族苗族自治州', '430000');
INSERT INTO `common_city` VALUES ('440100', '广州市', '440000');
INSERT INTO `common_city` VALUES ('440200', '韶关市', '440000');
INSERT INTO `common_city` VALUES ('440300', '深圳市', '440000');
INSERT INTO `common_city` VALUES ('440400', '珠海市', '440000');
INSERT INTO `common_city` VALUES ('440500', '汕头市', '440000');
INSERT INTO `common_city` VALUES ('440600', '佛山市', '440000');
INSERT INTO `common_city` VALUES ('440700', '江门市', '440000');
INSERT INTO `common_city` VALUES ('440800', '湛江市', '440000');
INSERT INTO `common_city` VALUES ('440900', '茂名市', '440000');
INSERT INTO `common_city` VALUES ('441200', '肇庆市', '440000');
INSERT INTO `common_city` VALUES ('441300', '惠州市', '440000');
INSERT INTO `common_city` VALUES ('441400', '梅州市', '440000');
INSERT INTO `common_city` VALUES ('441500', '汕尾市', '440000');
INSERT INTO `common_city` VALUES ('441600', '河源市', '440000');
INSERT INTO `common_city` VALUES ('441700', '阳江市', '440000');
INSERT INTO `common_city` VALUES ('441800', '清远市', '440000');
INSERT INTO `common_city` VALUES ('441900', '东莞市', '440000');
INSERT INTO `common_city` VALUES ('442000', '中山市', '440000');
INSERT INTO `common_city` VALUES ('445100', '潮州市', '440000');
INSERT INTO `common_city` VALUES ('445200', '揭阳市', '440000');
INSERT INTO `common_city` VALUES ('445300', '云浮市', '440000');
INSERT INTO `common_city` VALUES ('450100', '南宁市', '450000');
INSERT INTO `common_city` VALUES ('450200', '柳州市', '450000');
INSERT INTO `common_city` VALUES ('450300', '桂林市', '450000');
INSERT INTO `common_city` VALUES ('450400', '梧州市', '450000');
INSERT INTO `common_city` VALUES ('450500', '北海市', '450000');
INSERT INTO `common_city` VALUES ('450600', '防城港市', '450000');
INSERT INTO `common_city` VALUES ('450700', '钦州市', '450000');
INSERT INTO `common_city` VALUES ('450800', '贵港市', '450000');
INSERT INTO `common_city` VALUES ('450900', '玉林市', '450000');
INSERT INTO `common_city` VALUES ('451000', '百色市', '450000');
INSERT INTO `common_city` VALUES ('451100', '贺州市', '450000');
INSERT INTO `common_city` VALUES ('451200', '河池市', '450000');
INSERT INTO `common_city` VALUES ('451300', '来宾市', '450000');
INSERT INTO `common_city` VALUES ('451400', '崇左市', '450000');
INSERT INTO `common_city` VALUES ('460100', '海口市', '460000');
INSERT INTO `common_city` VALUES ('460200', '三亚市', '460000');
INSERT INTO `common_city` VALUES ('469001', '五指山市', '460000');
INSERT INTO `common_city` VALUES ('469002', '琼海市', '460000');
INSERT INTO `common_city` VALUES ('469003', '儋州市', '460000');
INSERT INTO `common_city` VALUES ('469005', '文昌市', '460000');
INSERT INTO `common_city` VALUES ('469006', '万宁市', '460000');
INSERT INTO `common_city` VALUES ('469007', '东方市', '460000');
INSERT INTO `common_city` VALUES ('469025', '定安县', '460000');
INSERT INTO `common_city` VALUES ('469026', '屯昌县', '460000');
INSERT INTO `common_city` VALUES ('469027', '澄迈县', '460000');
INSERT INTO `common_city` VALUES ('469028', '临高县', '460000');
INSERT INTO `common_city` VALUES ('469030', '白沙黎族自治县', '460000');
INSERT INTO `common_city` VALUES ('469031', '昌江黎族自治县', '460000');
INSERT INTO `common_city` VALUES ('469033', '乐东黎族自治县', '460000');
INSERT INTO `common_city` VALUES ('469034', '陵水黎族自治县', '460000');
INSERT INTO `common_city` VALUES ('469035', '保亭黎族苗族自治县', '460000');
INSERT INTO `common_city` VALUES ('469036', '琼中黎族苗族自治县', '460000');
INSERT INTO `common_city` VALUES ('469037', '西沙群岛', '460000');
INSERT INTO `common_city` VALUES ('469038', '南沙群岛', '460000');
INSERT INTO `common_city` VALUES ('469039', '中沙群岛的岛礁及其海域', '460000');
INSERT INTO `common_city` VALUES ('500000', '重庆', '500000');
INSERT INTO `common_city` VALUES ('510100', '成都市', '510000');
INSERT INTO `common_city` VALUES ('510300', '自贡市', '510000');
INSERT INTO `common_city` VALUES ('510400', '攀枝花市', '510000');
INSERT INTO `common_city` VALUES ('510500', '泸州市', '510000');
INSERT INTO `common_city` VALUES ('510600', '德阳市', '510000');
INSERT INTO `common_city` VALUES ('510700', '绵阳市', '510000');
INSERT INTO `common_city` VALUES ('510800', '广元市', '510000');
INSERT INTO `common_city` VALUES ('510900', '遂宁市', '510000');
INSERT INTO `common_city` VALUES ('511000', '内江市', '510000');
INSERT INTO `common_city` VALUES ('511100', '乐山市', '510000');
INSERT INTO `common_city` VALUES ('511300', '南充市', '510000');
INSERT INTO `common_city` VALUES ('511400', '眉山市', '510000');
INSERT INTO `common_city` VALUES ('511500', '宜宾市', '510000');
INSERT INTO `common_city` VALUES ('511600', '广安市', '510000');
INSERT INTO `common_city` VALUES ('511700', '达州市', '510000');
INSERT INTO `common_city` VALUES ('511800', '雅安市', '510000');
INSERT INTO `common_city` VALUES ('511900', '巴中市', '510000');
INSERT INTO `common_city` VALUES ('512000', '资阳市', '510000');
INSERT INTO `common_city` VALUES ('513200', '阿坝藏族羌族自治州', '510000');
INSERT INTO `common_city` VALUES ('513300', '甘孜藏族自治州', '510000');
INSERT INTO `common_city` VALUES ('513400', '凉山彝族自治州', '510000');
INSERT INTO `common_city` VALUES ('520100', '贵阳市', '520000');
INSERT INTO `common_city` VALUES ('520200', '六盘水市', '520000');
INSERT INTO `common_city` VALUES ('520300', '遵义市', '520000');
INSERT INTO `common_city` VALUES ('520400', '安顺市', '520000');
INSERT INTO `common_city` VALUES ('522200', '铜仁地区', '520000');
INSERT INTO `common_city` VALUES ('522300', '黔西南布依族苗族自治州', '520000');
INSERT INTO `common_city` VALUES ('522400', '毕节地区', '520000');
INSERT INTO `common_city` VALUES ('522600', '黔东南苗族侗族自治州', '520000');
INSERT INTO `common_city` VALUES ('522700', '黔南布依族苗族自治州', '520000');
INSERT INTO `common_city` VALUES ('530100', '昆明市', '530000');
INSERT INTO `common_city` VALUES ('530300', '曲靖市', '530000');
INSERT INTO `common_city` VALUES ('530400', '玉溪市', '530000');
INSERT INTO `common_city` VALUES ('530500', '保山市', '530000');
INSERT INTO `common_city` VALUES ('530600', '昭通市', '530000');
INSERT INTO `common_city` VALUES ('530700', '丽江市', '530000');
INSERT INTO `common_city` VALUES ('530800', '普洱市', '530000');
INSERT INTO `common_city` VALUES ('530900', '临沧市', '530000');
INSERT INTO `common_city` VALUES ('532300', '楚雄彝族自治州', '530000');
INSERT INTO `common_city` VALUES ('532500', '红河哈尼族彝族自治州', '530000');
INSERT INTO `common_city` VALUES ('532600', '文山壮族苗族自治州', '530000');
INSERT INTO `common_city` VALUES ('532800', '西双版纳傣族自治州', '530000');
INSERT INTO `common_city` VALUES ('532900', '大理白族自治州', '530000');
INSERT INTO `common_city` VALUES ('533100', '德宏傣族景颇族自治州', '530000');
INSERT INTO `common_city` VALUES ('533300', '怒江傈僳族自治州', '530000');
INSERT INTO `common_city` VALUES ('533400', '迪庆藏族自治州', '530000');
INSERT INTO `common_city` VALUES ('540100', '拉萨市', '540000');
INSERT INTO `common_city` VALUES ('542100', '昌都地区', '540000');
INSERT INTO `common_city` VALUES ('542200', '山南地区', '540000');
INSERT INTO `common_city` VALUES ('542300', '日喀则地区', '540000');
INSERT INTO `common_city` VALUES ('542400', '那曲地区', '540000');
INSERT INTO `common_city` VALUES ('542500', '阿里地区', '540000');
INSERT INTO `common_city` VALUES ('542600', '林芝地区', '540000');
INSERT INTO `common_city` VALUES ('610100', '西安市', '610000');
INSERT INTO `common_city` VALUES ('610200', '铜川市', '610000');
INSERT INTO `common_city` VALUES ('610300', '宝鸡市', '610000');
INSERT INTO `common_city` VALUES ('610400', '咸阳市', '610000');
INSERT INTO `common_city` VALUES ('610500', '渭南市', '610000');
INSERT INTO `common_city` VALUES ('610600', '延安市', '610000');
INSERT INTO `common_city` VALUES ('610700', '汉中市', '610000');
INSERT INTO `common_city` VALUES ('610800', '榆林市', '610000');
INSERT INTO `common_city` VALUES ('610900', '安康市', '610000');
INSERT INTO `common_city` VALUES ('611000', '商洛市', '610000');
INSERT INTO `common_city` VALUES ('620100', '兰州市', '620000');
INSERT INTO `common_city` VALUES ('620200', '嘉峪关市', '620000');
INSERT INTO `common_city` VALUES ('620300', '金昌市', '620000');
INSERT INTO `common_city` VALUES ('620400', '白银市', '620000');
INSERT INTO `common_city` VALUES ('620500', '天水市', '620000');
INSERT INTO `common_city` VALUES ('620600', '武威市', '620000');
INSERT INTO `common_city` VALUES ('620700', '张掖市', '620000');
INSERT INTO `common_city` VALUES ('620800', '平凉市', '620000');
INSERT INTO `common_city` VALUES ('620900', '酒泉市', '620000');
INSERT INTO `common_city` VALUES ('621000', '庆阳市', '620000');
INSERT INTO `common_city` VALUES ('621100', '定西市', '620000');
INSERT INTO `common_city` VALUES ('621200', '陇南市', '620000');
INSERT INTO `common_city` VALUES ('622900', '临夏回族自治州', '620000');
INSERT INTO `common_city` VALUES ('623000', '甘南藏族自治州', '620000');
INSERT INTO `common_city` VALUES ('630100', '西宁市', '630000');
INSERT INTO `common_city` VALUES ('632100', '海东地区', '630000');
INSERT INTO `common_city` VALUES ('632200', '海北藏族自治州', '630000');
INSERT INTO `common_city` VALUES ('632300', '黄南藏族自治州', '630000');
INSERT INTO `common_city` VALUES ('632500', '海南藏族自治州', '630000');
INSERT INTO `common_city` VALUES ('632600', '果洛藏族自治州', '630000');
INSERT INTO `common_city` VALUES ('632700', '玉树藏族自治州', '630000');
INSERT INTO `common_city` VALUES ('632800', '海西蒙古族藏族自治州', '630000');
INSERT INTO `common_city` VALUES ('640100', '银川市', '640000');
INSERT INTO `common_city` VALUES ('640200', '石嘴山市', '640000');
INSERT INTO `common_city` VALUES ('640300', '吴忠市', '640000');
INSERT INTO `common_city` VALUES ('640400', '固原市', '640000');
INSERT INTO `common_city` VALUES ('640500', '中卫市', '640000');
INSERT INTO `common_city` VALUES ('650100', '乌鲁木齐市', '650000');
INSERT INTO `common_city` VALUES ('650200', '克拉玛依市', '650000');
INSERT INTO `common_city` VALUES ('652100', '吐鲁番地区', '650000');
INSERT INTO `common_city` VALUES ('652200', '哈密地区', '650000');
INSERT INTO `common_city` VALUES ('652300', '昌吉回族自治州', '650000');
INSERT INTO `common_city` VALUES ('652700', '博尔塔拉蒙古自治州', '650000');
INSERT INTO `common_city` VALUES ('652800', '巴音郭楞蒙古自治州', '650000');
INSERT INTO `common_city` VALUES ('652900', '阿克苏地区', '650000');
INSERT INTO `common_city` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '650000');
INSERT INTO `common_city` VALUES ('653100', '喀什地区', '650000');
INSERT INTO `common_city` VALUES ('653200', '和田地区', '650000');
INSERT INTO `common_city` VALUES ('654000', '伊犁哈萨克自治州', '650000');
INSERT INTO `common_city` VALUES ('654200', '塔城地区', '650000');
INSERT INTO `common_city` VALUES ('654300', '阿勒泰地区', '650000');
INSERT INTO `common_city` VALUES ('659001', '石河子市', '650000');
INSERT INTO `common_city` VALUES ('659002', '阿拉尔市', '650000');
INSERT INTO `common_city` VALUES ('659003', '图木舒克市', '650000');
INSERT INTO `common_city` VALUES ('659004', '五家渠市', '650000');
INSERT INTO `common_city` VALUES ('710100', '台北市', '710000');
INSERT INTO `common_city` VALUES ('710200', '高雄市', '710000');
INSERT INTO `common_city` VALUES ('710300', '台南市', '710000');
INSERT INTO `common_city` VALUES ('710400', '台中市', '710000');
INSERT INTO `common_city` VALUES ('710500', '金门县', '710000');
INSERT INTO `common_city` VALUES ('710600', '南投县', '710000');
INSERT INTO `common_city` VALUES ('710700', '基隆市', '710000');
INSERT INTO `common_city` VALUES ('710800', '新竹市', '710000');
INSERT INTO `common_city` VALUES ('710900', '嘉义市', '710000');
INSERT INTO `common_city` VALUES ('711100', '新北市', '710000');
INSERT INTO `common_city` VALUES ('711200', '宜兰县', '710000');
INSERT INTO `common_city` VALUES ('711300', '新竹县', '710000');
INSERT INTO `common_city` VALUES ('711400', '桃园县', '710000');
INSERT INTO `common_city` VALUES ('711500', '苗栗县', '710000');
INSERT INTO `common_city` VALUES ('711700', '彰化县', '710000');
INSERT INTO `common_city` VALUES ('711900', '嘉义县', '710000');
INSERT INTO `common_city` VALUES ('712100', '云林县', '710000');
INSERT INTO `common_city` VALUES ('712400', '屏东县', '710000');
INSERT INTO `common_city` VALUES ('712500', '台东县', '710000');
INSERT INTO `common_city` VALUES ('712600', '花莲县', '710000');
INSERT INTO `common_city` VALUES ('712700', '澎湖县', '710000');
INSERT INTO `common_city` VALUES ('810100', '香港岛', '810000');
INSERT INTO `common_city` VALUES ('810200', '九龙', '810000');
INSERT INTO `common_city` VALUES ('810300', '新界', '810000');
INSERT INTO `common_city` VALUES ('820100', '澳门半岛', '820000');
INSERT INTO `common_city` VALUES ('820200', '离岛', '820000');
INSERT INTO `common_city` VALUES ('990100', '海外', '990000');

-- ----------------------------
-- Table structure for common_province
-- ----------------------------
DROP TABLE IF EXISTS `common_province`;
CREATE TABLE `common_province` (
  `code` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_province
-- ----------------------------
INSERT INTO `common_province` VALUES ('110000', '北京市', null);
INSERT INTO `common_province` VALUES ('120000', '天津市', null);
INSERT INTO `common_province` VALUES ('130000', '河北省', null);
INSERT INTO `common_province` VALUES ('140000', '山西省', null);
INSERT INTO `common_province` VALUES ('150000', '内蒙古', null);
INSERT INTO `common_province` VALUES ('210000', '辽宁省', null);
INSERT INTO `common_province` VALUES ('220000', '吉林省', null);
INSERT INTO `common_province` VALUES ('230000', '黑龙江省', null);
INSERT INTO `common_province` VALUES ('310000', '上海市', null);
INSERT INTO `common_province` VALUES ('320000', '江苏省', null);
INSERT INTO `common_province` VALUES ('330000', '浙江省', null);
INSERT INTO `common_province` VALUES ('340000', '安徽省', null);
INSERT INTO `common_province` VALUES ('350000', '福建省', null);
INSERT INTO `common_province` VALUES ('360000', '江西省', null);
INSERT INTO `common_province` VALUES ('370000', '山东省', null);
INSERT INTO `common_province` VALUES ('410000', '河南省', null);
INSERT INTO `common_province` VALUES ('420000', '湖北省', null);
INSERT INTO `common_province` VALUES ('430000', '湖南省', null);
INSERT INTO `common_province` VALUES ('440000', '广东省', null);
INSERT INTO `common_province` VALUES ('450000', '广西壮族', null);
INSERT INTO `common_province` VALUES ('460000', '海南省', null);
INSERT INTO `common_province` VALUES ('500000', '重庆', null);
INSERT INTO `common_province` VALUES ('510000', '四川省', null);
INSERT INTO `common_province` VALUES ('520000', '贵州省', null);
INSERT INTO `common_province` VALUES ('530000', '云南省', null);
INSERT INTO `common_province` VALUES ('540000', '西藏', null);
INSERT INTO `common_province` VALUES ('610000', '陕西省', null);
INSERT INTO `common_province` VALUES ('620000', '甘肃省', null);
INSERT INTO `common_province` VALUES ('630000', '青海省', null);
INSERT INTO `common_province` VALUES ('640000', '宁夏', null);
INSERT INTO `common_province` VALUES ('650000', '新疆', null);
INSERT INTO `common_province` VALUES ('710000', '台湾省', null);
INSERT INTO `common_province` VALUES ('810000', '香港', null);
INSERT INTO `common_province` VALUES ('820000', '澳门', null);
INSERT INTO `common_province` VALUES ('990000', '海外', null);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `code` varchar(20) NOT NULL,
  `type` varchar(50) DEFAULT 'system',
  `name` varchar(255) NOT NULL,
  `val` varchar(255) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open` tinyint(1) DEFAULT '1' COMMENT '0 关房 1开房',
  `status` tinyint(1) DEFAULT '1' COMMENT '1未入住  0已入住  -1维护中',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('4', '18973', '地字 002号', '2017-08-17 11:34:17', '2017-08-18 15:18:13', '1', '1');
INSERT INTO `goods` VALUES ('5', '18973', '地字 001号', '2017-08-17 11:55:34', '2017-08-18 15:17:58', '1', '1');
INSERT INTO `goods` VALUES ('6', '18961', '天字 001号 ', '2017-08-18 10:56:04', '2017-08-19 22:52:38', '0', '1');
INSERT INTO `goods` VALUES ('7', '18961', '天字 002号', '2017-08-18 15:16:35', '2017-08-18 15:16:35', '1', '1');
INSERT INTO `goods` VALUES ('8', '18961', '天字 003号', '2017-08-18 15:16:49', '2017-08-18 15:16:49', '1', '1');
INSERT INTO `goods` VALUES ('9', '18973', '地字 003号', '2017-08-18 15:18:28', '2017-08-19 22:56:14', '1', '1');
INSERT INTO `goods` VALUES ('10', '18972', '玄子 001号', '2017-08-18 15:23:45', '2017-08-18 15:23:45', '1', '1');
INSERT INTO `goods` VALUES ('11', '18972', '玄子 002号', '2017-08-18 15:23:57', '2017-08-18 15:24:05', '1', '1');
INSERT INTO `goods` VALUES ('12', '18972', '玄子 003号', '2017-08-18 15:24:20', '2017-08-18 15:24:20', '1', '1');

-- ----------------------------
-- Table structure for goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `goods_attr`;
CREATE TABLE `goods_attr` (
  `gattr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`gattr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for goods_category
-- ----------------------------
DROP TABLE IF EXISTS `goods_category`;
CREATE TABLE `goods_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  `marketprice` decimal(10,2) DEFAULT NULL,
  `normalprice` decimal(10,2) DEFAULT NULL,
  `vipprice` decimal(10,2) DEFAULT NULL,
  `bed` tinyint(1) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `number` int(10) DEFAULT NULL,
  `sort` varchar(10) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18977 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_category
-- ----------------------------
INSERT INTO `goods_category` VALUES ('18973', '标间', '1', '368.00', '258.00', '238.00', '1', 'http://www.hotel.io/images/1503104703.jpg', 'http://www.hotel.io/images/1503104703.jpg', '标间', '30', '97', '2017-08-18 14:49:30', '2017-08-26 14:49:32');
INSERT INTO `goods_category` VALUES ('18972', '双床房', '1', '568.00', '498.00', '468.00', '2', 'http://www.hotel.io/images/1503104686.jpg', 'http://www.hotel.io/images/1503104686.jpg', '标间', '20', '98', '2017-08-18 14:49:20', '2017-08-26 14:49:22');
INSERT INTO `goods_category` VALUES ('18961', '豪华大床房', '1', '998.00', '768.00', '758.00', '1', 'http://www.hotel.io/images/1503104670.jpg', 'http://www.hotel.io/images/1503104670.jpg', '标间', '20', '99', '2017-08-18 14:32:44', '2017-08-31 14:33:02');

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_alias` varchar(30) DEFAULT NULL COMMENT '别名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES ('1', '医疗器械', 'fit', '1', '0');
INSERT INTO `goods_type` VALUES ('2', '保健品', 'care', '1', '0');
INSERT INTO `goods_type` VALUES ('3', '化妆品', 'makeup', '1', '0');
INSERT INTO `goods_type` VALUES ('4', '美容品', 'beauty', '1', '0');
INSERT INTO `goods_type` VALUES ('5', '养生', 'health', '1', '0');
INSERT INTO `goods_type` VALUES ('6', '其他', 'other', '1', '0');
INSERT INTO `goods_type` VALUES ('54', '服装鞋包', 'dress', '1', '1');
INSERT INTO `goods_type` VALUES ('57', '运动户外', 'motion', '1', '1');
INSERT INTO `goods_type` VALUES ('58', '美妆饰品', 'hair', '1', '1');
INSERT INTO `goods_type` VALUES ('59', '母婴用品', 'mom', '1', '1');
INSERT INTO `goods_type` VALUES ('61', '百货食品', 'food', '1', '1');
INSERT INTO `goods_type` VALUES ('1830', '家用电器', 'tv', '1', '1');
INSERT INTO `goods_type` VALUES ('1861', '房产信息', 'house', '1', '1');
INSERT INTO `goods_type` VALUES ('2493', '手机数码', 'mobile', '1', '1');
INSERT INTO `goods_type` VALUES ('2494', '家居建材', 'home', '1', '1');
INSERT INTO `goods_type` VALUES ('18415', '定制服务', 'custom', '1', '1');
INSERT INTO `goods_type` VALUES ('18416', '车辆配件', 'auto', '1', '1');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(64) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0待审核 1预定成功 2已完成',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0 未付款 1 已付款 2已退款',
  `openid` varchar(64) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `goods_id` int(11) NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实际单价',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `add_time` datetime NOT NULL,
  `forms` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 线上预定 0 线下预定',
  `pdt_snapshot` varchar(2000) DEFAULT NULL COMMENT '交易快照',
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `last` tinyint(1) DEFAULT '1',
  `category_id` int(10) DEFAULT NULL,
  `category_name` varchar(64) DEFAULT NULL,
  `phone` char(11) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('8', '201708191522443393', '2', '1', 'oG3Ulv_z-uJsb-uUmy6m62J5qxc0', '1', '0', '', '0.00', '0.00', '768.00', '2017-08-19 15:22:44', '1', null, '2017-8-19', '2017-8-20', '1', '18961', '豪华大床房', '15639288529', '任磊');
INSERT INTO `orders` VALUES ('9', '201708191526116493', '2', '1', 'oG3Ulv_z-uJsb-uUmy6m62J5qxc0', '1', '0', '', '0.00', '0.00', '768.00', '2017-08-19 15:26:11', '1', null, '2017-8-19', '2017-8-20', '1', '18961', '豪华大床房', '15639288529', '任磊');
INSERT INTO `orders` VALUES ('10', '201708191528544888', '0', '1', 'oG3Ulv_z-uJsb-uUmy6m62J5qxc0', '1', '0', '', '258.00', '0.00', '258.00', '2017-08-19 15:28:54', '1', null, '2017-8-19', '2017-8-20', '1', '18973', '标间', '15639288529', '任磊');

-- ----------------------------
-- Table structure for orders_affiliates
-- ----------------------------
DROP TABLE IF EXISTS `orders_affiliates`;
CREATE TABLE `orders_affiliates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `order_uid` int(11) NOT NULL DEFAULT '0',
  `order_uname` varchar(20) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `uname` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_affiliates
-- ----------------------------

-- ----------------------------
-- Table structure for orders_goods
-- ----------------------------
DROP TABLE IF EXISTS `orders_goods`;
CREATE TABLE `orders_goods` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(100) NOT NULL,
  `order_id` int(4) NOT NULL COMMENT '订单id',
  `goods_id` int(4) NOT NULL,
  `store_id` int(4) NOT NULL,
  `name1` varchar(50) DEFAULT NULL COMMENT '配置1',
  `value1` varchar(50) DEFAULT NULL COMMENT '值',
  `name2` varchar(50) DEFAULT NULL COMMENT '配置2',
  `value2` varchar(50) DEFAULT NULL,
  `name3` varchar(50) DEFAULT NULL,
  `value3` varchar(50) DEFAULT NULL,
  `count` int(4) NOT NULL COMMENT '数量',
  `money` varchar(4) NOT NULL COMMENT '单价',
  `total_free` varchar(4) NOT NULL COMMENT '总价',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orders_goods
-- ----------------------------

-- ----------------------------
-- Table structure for orders_shippings
-- ----------------------------
DROP TABLE IF EXISTS `orders_shippings`;
CREATE TABLE `orders_shippings` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `uid` int(10) NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `area` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders_shippings
-- ----------------------------

-- ----------------------------
-- Table structure for order_goods
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `ogoods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `store_id` int(10) NOT NULL DEFAULT '0',
  `store_name` varchar(50) DEFAULT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `split_money` decimal(10,2) NOT NULL,
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  `comment_state` tinyint(1) NOT NULL DEFAULT '0',
  `cost_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ogoods_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO `order_goods` VALUES ('1', '64', '1', '测试', '1', '测试电器', '12113151512151', '0', '2', '2000.00', '2000.00', '2000.00', '', '11', '1|2|3', '1', '200.00', '200.00');
INSERT INTO `order_goods` VALUES ('2', '64', '2', '侧喝死2 ', '2', '测试电器1', '121651525115121', '0', '1', '300.00', '200.00', '4000.00', '', '12', '21', '2', '3000.00', '21.00');

-- ----------------------------
-- Table structure for room_status
-- ----------------------------
DROP TABLE IF EXISTS `room_status`;
CREATE TABLE `room_status` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL,
  `name` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `mobile` char(11) CHARACTER SET latin1 DEFAULT NULL,
  `start_time` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `end_time` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `goods_name` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `category` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `number` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_status
-- ----------------------------

-- ----------------------------
-- Table structure for sms_record
-- ----------------------------
DROP TABLE IF EXISTS `sms_record`;
CREATE TABLE `sms_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sms_record
-- ----------------------------
INSERT INTO `sms_record` VALUES ('1', '15639288529', '665187', '0', '2017-08-19 13:09:43', '2017-08-19 13:09:43');
INSERT INTO `sms_record` VALUES ('2', '15639288529', '772943', '0', '2017-08-19 13:09:48', '2017-08-19 13:09:48');
INSERT INTO `sms_record` VALUES ('3', '15639288529', '697242', '0', '2017-08-19 13:06:55', '2017-08-19 13:06:55');
INSERT INTO `sms_record` VALUES ('4', '15639288529', '833654', '0', '2017-08-19 13:12:10', '2017-08-19 13:12:10');

-- ----------------------------
-- Table structure for stores
-- ----------------------------
DROP TABLE IF EXISTS `stores`;
CREATE TABLE `stores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `mch_id` varchar(50) DEFAULT NULL,
  `category` varchar(10) NOT NULL DEFAULT 'travel' COMMENT 'travel旅游,beauty美容,3c电子,fit健身,other其他',
  `store_name` varchar(64) NOT NULL COMMENT '门店名称',
  `logo` varchar(128) DEFAULT '' COMMENT '封面',
  `url` varchar(255) NOT NULL COMMENT '官网链接',
  `images` text,
  `intro` varchar(255) DEFAULT '' COMMENT '简介',
  `star` decimal(5,2) NOT NULL DEFAULT '3.00',
  `contacter` varchar(10) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL COMMENT '联系电话',
  `note` varchar(255) DEFAULT '' COMMENT '注意事项',
  `province` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `area` varchar(32) DEFAULT NULL,
  `community` varchar(32) DEFAULT NULL,
  `address` varchar(128) NOT NULL COMMENT '门店地址',
  `open_time` varchar(30) DEFAULT '18:00',
  `close_time` varchar(30) DEFAULT '00:00',
  `avgprice` int(11) DEFAULT '100',
  `cash` int(11) NOT NULL DEFAULT '0' COMMENT '返现',
  `lat` varchar(16) NOT NULL COMMENT '商户经度',
  `lng` varchar(16) NOT NULL COMMENT '商户纬度',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：1正常  -1删除 0异常',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stores
-- ----------------------------
INSERT INTO `stores` VALUES ('1', null, 'travel', '归真堂', 'http://fenqi.emake.cc/images/1498271003.jpg', 'http://www.baidu.com', 'http://fenqi.emake.cc/images/1498271003.jpg,http://fenqi.emake.cc/images/1498271009.jpg,http://fenqi.emake.cc/images/1498271030.jpg', '【品质保证】全程品质纯玩，无隐形消费，高品质旅行团，绝无任何强制消费！\r\n【贴心服务】免费接送站服务，接站时献哈达，一站式服务，尽想愉快旅程！\r\n【景点全含】西藏经典小全景游，经典美景全览，走最美风景行程！\r\n【放心出游】全程一对一专业客服贴心跟踪，为您解决行程中一切问题！', '3.00', '刘亚', null, '18092536789', '', '陕西', '宝鸡', null, null, '成都高新区天府大道北段1700号2幢1单元13层1320号', '18:00', '00:00', '100', '0', '30.57122', '104.0621', '1', '2017-06-24 02:24:28', '2017-08-14 11:40:49');
INSERT INTO `stores` VALUES ('2', null, 'travel', '店铺测试', 'http://fenqi.emake.cc/images/1498271149.png', 'http://www.baidu.com', 'http://fenqi.emake.cc/images/1498271149.png,http://fenqi.emake.cc/images/1498271169.png', '介绍', '3.00', '曹修康', null, '18409272907', '', '陕西', '宝鸡', null, null, '西安市高新区高新二路', '18:00', '00:00', '100', '0', '34.34127', '108.93984', '1', '2017-06-24 02:26:32', '2017-08-17 10:21:24');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'member' COMMENT 'admin管理员,finance财务,channel渠道员,risk分控员,member消费者',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idcard_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idcard_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idcard_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wechatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `licence` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '驾照',
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '护照',
  `hk_permit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taiwan_permit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '现住地址',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '充值金额',
  `award` decimal(10,2) DEFAULT NULL COMMENT '分销奖励',
  `point` smallint(4) NOT NULL DEFAULT '10000' COMMENT '额度',
  `level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员级别',
  `vip` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否开卡',
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(3) DEFAULT '-1' COMMENT '-1 未认证 0等待通过 1已认证',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `audited_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', 'oG3Ulv_z-uJsb-uUmy6m62J5qxc0', 'cj', 'cs', '$2y$10$ElREt5shgOYB1XLyNt/U9entZbiHM2G/E7RO4FJqvcn/i5Mp8T0Qq', 'xiao wang ', '1', 'http://wx.qlogo.cn/mmopen/YwzJgB9EibSEGyyS0ZSvWNgGkk1ykhAvBttlvia0TicCjjbOwaynXIlZ6LwibJKjDzezVTb3tWpr5BTAVpogAIGz7FcSPaBwHp6b/0', '18691495616', '1441010201267', 'http://www.hotel.io/images/1503060220.jpg', 'http://www.hotel.io/images/1503060226.jpg', '12333', 'weed@QQ.com', null, null, null, null, '中国', '陕西', '西安', null, '', '0.00', null, '10000', '1', '0', '1', '1', 'EPpeea6QSuREZHni5xPGwXUj3mNmGkFbdn9rxf0OqzkaeY6cxi4ddLA1iAs1', '2017-05-18 02:30:05', '2017-08-19 13:13:01', '2017-07-05 07:42:56');
INSERT INTO `users` VALUES ('15', 'admin', null, null, '13276888222', '', '管理员', null, null, '13276888222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', null, '10000', '1', '0', '0', '1', null, '2017-07-03 06:27:06', '2017-07-03 06:27:06', null);
INSERT INTO `users` VALUES ('16', 'admin', null, null, '18691495111', '$2y$10$7bQffthmOy/y2je61DZCbeDdT1Mr01tP3u42yfaglLdNFA4qei3Q2', '超级管理员', null, null, '18691495111', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0.00', null, '10000', '1', '0', '0', '1', 'fcN8yU8oalxgUeVtmEKXSiJdabPNSEKyUhwJnryJV6MLB44Z3jmQdJzVK10r', '2017-07-03 06:29:24', '2017-07-04 08:55:22', null);

-- ----------------------------
-- Table structure for users_address
-- ----------------------------
DROP TABLE IF EXISTS `users_address`;
CREATE TABLE `users_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `openid` varchar(50) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `lng` varchar(20) DEFAULT NULL,
  `defaulted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users_address
-- ----------------------------
INSERT INTO `users_address` VALUES ('1', '8', 'ertrw', '18409272907', '1102842479', '中国', '陕西', '安康', '石泉县', '城管证太阳村一组', '12.000', '13.00', '0', '2017-07-17 02:51:22', '2017-07-17 02:51:25');
INSERT INTO `users_address` VALUES ('2', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null);

-- ----------------------------
-- Table structure for users_affiliate
-- ----------------------------
DROP TABLE IF EXISTS `users_affiliate`;
CREATE TABLE `users_affiliate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `level` tinyint(1) NOT NULL DEFAULT '1',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users_affiliate
-- ----------------------------

-- ----------------------------
-- Table structure for users_cards
-- ----------------------------
DROP TABLE IF EXISTS `users_cards`;
CREATE TABLE `users_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `months` smallint(4) NOT NULL DEFAULT '1',
  `days` smallint(6) NOT NULL DEFAULT '30',
  `point` smallint(4) NOT NULL DEFAULT '0',
  `level` smallint(1) NOT NULL DEFAULT '1',
  `promote` tinyint(3) NOT NULL DEFAULT '0',
  `status` tinyint(3) DEFAULT '1',
  `sort` smallint(6) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_cards
-- ----------------------------

-- ----------------------------
-- Table structure for users_cards_promote
-- ----------------------------
DROP TABLE IF EXISTS `users_cards_promote`;
CREATE TABLE `users_cards_promote` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `card_id` int(10) NOT NULL,
  `card_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `months` smallint(4) NOT NULL DEFAULT '1',
  `num` smallint(6) NOT NULL DEFAULT '1',
  `start_time` int(10) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '1',
  `status` tinyint(3) DEFAULT '1',
  `sort` smallint(6) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_cards_promote
-- ----------------------------

-- ----------------------------
-- Table structure for users_cash_records
-- ----------------------------
DROP TABLE IF EXISTS `users_cash_records`;
CREATE TABLE `users_cash_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `way` tinyint(3) DEFAULT '0' COMMENT '支付方式',
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '发红包凭证',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_cash_records
-- ----------------------------
INSERT INTO `users_cash_records` VALUES ('1', '18', '15771801407', 'oG3Ulv7nO8UL6ap-R6Vg-NvYlIvk', '10.00', '3', 'http://fenqi.emake.cc/images/1499231494.jpg', '1', '微信提现', '2017-07-05 05:03:10', '2017-07-05 05:15:00');
INSERT INTO `users_cash_records` VALUES ('2', '18', '15771801407', 'oG3Ulv7nO8UL6ap-R6Vg-NvYlIvk', '10.00', '0', null, '0', '微信提现', '2017-07-05 05:18:06', '2017-07-05 05:18:06');

-- ----------------------------
-- Table structure for users_money_records
-- ----------------------------
DROP TABLE IF EXISTS `users_money_records`;
CREATE TABLE `users_money_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `channel_id` int(10) NOT NULL DEFAULT '0',
  `uname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1收入0支出',
  `cate` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1充值0奖励2还款3提现',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_money_records
-- ----------------------------
INSERT INTO `users_money_records` VALUES ('3', '微信充值', '8', '2', '18409272907', '0.01', '1', '1', '微信充值', '2017-07-02 05:35:15', '2017-07-02 05:35:15');
INSERT INTO `users_money_records` VALUES ('4', '微信充值', '8', '2', '18409272907', '0.01', '1', '1', '微信充值', '2017-07-02 06:12:53', '2017-07-02 06:12:53');
INSERT INTO `users_money_records` VALUES ('5', '微信充值', '8', '2', '18409272907', '0.01', '1', '1', '微信充值', '2017-07-02 15:44:56', '2017-07-02 15:44:56');
INSERT INTO `users_money_records` VALUES ('6', '微信充值', '17', '2', '15291983107', '0.20', '1', '1', '微信充值', '2017-07-03 17:22:08', '2017-07-03 17:22:08');
INSERT INTO `users_money_records` VALUES ('7', '微信充值', '8', '2', '18409272907', '0.01', '1', '1', '微信充值', '2017-07-04 02:13:21', '2017-07-04 02:13:21');
INSERT INTO `users_money_records` VALUES ('8', '微信充值', '8', '2', '18409272907', '0.01', '1', '1', '微信充值', '2017-07-04 03:02:53', '2017-07-04 03:02:53');
INSERT INTO `users_money_records` VALUES ('9', '充值-微信支付', '18', '2', '15771801407', '0.01', '1', '1', '充值-微信支付', '2017-07-04 03:23:16', '2017-07-04 03:23:16');
INSERT INTO `users_money_records` VALUES ('10', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-04 03:27:12', '2017-07-04 03:27:12');
INSERT INTO `users_money_records` VALUES ('11', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-04 03:33:04', '2017-07-04 03:33:04');
INSERT INTO `users_money_records` VALUES ('12', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-04 17:28:06', '2017-07-04 17:28:06');
INSERT INTO `users_money_records` VALUES ('13', '充值-微信支付', '17', '2', '15291983107', '0.02', '1', '1', '充值-微信支付', '2017-07-04 17:37:05', '2017-07-04 17:37:05');
INSERT INTO `users_money_records` VALUES ('14', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-05 01:53:51', '2017-07-05 01:53:51');
INSERT INTO `users_money_records` VALUES ('15', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-05 01:59:07', '2017-07-05 01:59:07');
INSERT INTO `users_money_records` VALUES ('16', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-05 02:01:54', '2017-07-05 02:01:54');
INSERT INTO `users_money_records` VALUES ('17', '充值-微信支付', '8', '2', '18409272907', '0.01', '1', '1', '充值-微信支付', '2017-07-05 02:14:58', '2017-07-05 02:14:58');
INSERT INTO `users_money_records` VALUES ('18', '充值-手续费', '8', '2', '18409272907', '0.01', '1', '1', '充值-手续费', '2017-07-05 02:19:46', '2017-07-05 02:19:46');
INSERT INTO `users_money_records` VALUES ('19', '扣除-手续费', '8', '2', '18409272907', '0.01', '0', '1', '扣除-手续费', '2017-07-05 02:19:46', '2017-07-05 02:19:46');
INSERT INTO `users_money_records` VALUES ('20', '账户提现', '18', '0', '15771801407', '10.00', '0', '3', '15771801407提现10.00', '2017-07-05 05:15:00', '2017-07-05 05:15:00');
INSERT INTO `users_money_records` VALUES ('21', '充值-微信支付', '8', '2', '曹修康', '0.02', '1', '1', '充值-微信支付', '2017-07-05 07:02:21', '2017-07-05 07:02:21');
INSERT INTO `users_money_records` VALUES ('22', '充值-手续费', '8', '2', '曹修康', '0.01', '1', '1', '充值-手续费', '2017-07-05 07:03:19', '2017-07-05 07:03:19');
INSERT INTO `users_money_records` VALUES ('23', '扣除-手续费', '8', '2', '曹修康', '0.01', '0', '2', '扣除-手续费', '2017-07-05 07:03:19', '2017-07-05 07:03:19');
INSERT INTO `users_money_records` VALUES ('24', '充值-微信支付', '33', '18', '张三', '1.00', '1', '1', '充值-微信支付', '2017-07-05 07:52:03', '2017-07-05 07:52:03');
INSERT INTO `users_money_records` VALUES ('25', '充值-手续费', '33', '18', '张三', '202.16', '1', '1', '充值-手续费', '2017-07-05 07:55:16', '2017-07-05 07:55:16');
INSERT INTO `users_money_records` VALUES ('26', '扣除-手续费', '33', '18', '张三', '202.16', '0', '2', '扣除-手续费', '2017-07-05 07:55:16', '2017-07-05 07:55:16');

-- ----------------------------
-- Table structure for users_orders
-- ----------------------------
DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE `users_orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `promote` tinyint(1) DEFAULT '0',
  `openid` varchar(255) DEFAULT NULL,
  `out_trade_no` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `channel_id` int(10) NOT NULL DEFAULT '0',
  `uname` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `card_id` int(11) NOT NULL DEFAULT '0',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_amount` smallint(6) NOT NULL DEFAULT '1',
  `months` smallint(6) NOT NULL DEFAULT '1',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `order_amount` smallint(6) DEFAULT '1',
  `add_time` datetime NOT NULL,
  `confirm_time` datetime DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `receive_time` datetime DEFAULT NULL,
  `affiliate` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否订单已经返佣(2:已返,1:未返)',
  `froms` char(10) NOT NULL DEFAULT 'charge' COMMENT 'charge充值,refund还款fee手续费',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_orders
-- ----------------------------
INSERT INTO `users_orders` VALUES ('22', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170702133507', '7551000001201707023232461096', '1', '1', '8', '0', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('23', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170702141237', '7551000001201707023132565668', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('24', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170702234446', '7551000001201707022266040490', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('25', '0', 'oG3Ulv4dud84cAndcyF8t1UrdrY0', 'wx20170704012148', null, '0', '0', '17', '2', '15291983107', '15291983107', '0', '', '1', '1', '0.20', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('26', '0', 'oywgtuLeokjeqjo_Hi_LWm6eqErY', 'wx20170704012158', '7551000001201707048117607747', '1', '1', '17', '2', '15291983107', '15291983107', '0', '', '1', '1', '0.20', '0.20', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('27', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170704101309', '7551000001201707042269219800', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('28', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704105830', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.10', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('29', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704105858', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('30', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110047', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('31', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110220', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('32', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170704110239', '7551000001201707045193953098', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('33', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110318', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('34', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110343', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('35', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110426', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('36', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110441', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('37', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110613', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('38', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110708', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('39', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704110722', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('40', '0', 'oG3Ulv7nO8UL6ap-R6Vg-NvYlIvk', 'wx20170704110850', null, '0', '0', '18', '2', '15771801407', '15771801407', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('41', '0', 'oG3Ulv7nO8UL6ap-R6Vg-NvYlIvk', 'wx20170704110916', null, '0', '0', '18', '2', '15771801407', '15771801407', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('42', '0', 'oG3Ulv7nO8UL6ap-R6Vg-NvYlIvk', 'wx20170704110928', null, '0', '0', '18', '2', '15771801407', '15771801407', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('43', '0', 'oG3Ulv7nO8UL6ap-R6Vg-NvYlIvk', 'wx20170704110947', null, '0', '0', '18', '2', '15771801407', '15771801407', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('44', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704111006', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('45', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704111955', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('46', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704112105', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('47', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704112244', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('48', '0', 'oywgtuOuCLqQHPJLvpxFbuF8qdvM', 'wx20170704112302', '7551000001201707046124352343', '1', '1', '18', '2', '15771801407', '15771801407', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('49', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704112410', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.00', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('50', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170704112608', '7551000001201707047219012254', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('51', '0', 'oywgtuM6mOGtAQwYevjpeKxVjfLg', 'wx20170704113255', '7551000001201707041146207965', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mobile');
INSERT INTO `users_orders` VALUES ('56', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170704190359', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '349.16', '0.00', '0.00', '1', '2017-07-04 19:03:59', null, null, null, '1', 'mobile');
INSERT INTO `users_orders` VALUES ('57', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705002420', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', 'Array', '1', '1', '4432.34', '0.00', '0.00', '1', '2017-07-05 00:24:21', null, null, null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('58', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705002842', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '16|15|16|15|15', '1', '1', '5570.10', '0.00', '0.00', '1', '2017-07-05 00:28:43', null, null, null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('59', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705003107', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '15', '1', '1', '1137.76', '0.00', '0.00', '1', '2017-07-05 00:31:07', null, null, null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('60', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705003213', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '17|16|15', '1', '1', '3235.22', '0.00', '0.00', '1', '2017-07-05 00:32:13', null, null, null, '1', 'refund');
INSERT INTO `users_orders` VALUES ('61', '0', 'oG3Ulv4dud84cAndcyF8t1UrdrY0', 'wx20170705003234', null, '0', '0', '17', '2', '15291983107', '15291983107', '0', '', '1', '1', '1.00', '0.00', '0.00', '1', '2017-07-05 00:32:34', null, null, null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('62', '0', 'o-Rj7wFoaULDUWJbBujatOULefDQ', 'wx20170705003251', '101540071790201707052271478929', '1', '1', '17', '2', '15291983107', '15291983107', '0', '', '1', '1', '0.02', '0.02', '0.00', '1', '2017-07-05 00:32:51', null, '2017-07-05 01:37:05', null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('63', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705003513', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '16|15', '1', '1', '2216.17', '2216.17', '0.00', '1', '2017-07-05 00:35:14', null, null, null, '1', 'refund');
INSERT INTO `users_orders` VALUES ('64', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705012754', '101540071790201707053240357808', '1', '1', '8', '2', '18409272907', '18409272907', '0', '', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 01:27:54', null, '2017-07-05 01:28:06', null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('65', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705012845', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '349.16', '349.16', '0.00', '1', '2017-07-05 01:28:46', null, null, null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('66', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705012920', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '20|19|18|17|16|15', '1', '1', '5878.36', '5878.36', '0.00', '1', '2017-07-05 01:29:20', null, null, null, '1', 'refund');
INSERT INTO `users_orders` VALUES ('67', '0', null, null, null, '0', '0', '0', '0', null, null, '0', '', '1', '1', '0.00', '0.00', '0.00', '1', '0000-00-00 00:00:00', null, null, null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('68', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705095339', '101540071790201707056227207116', '1', '1', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 09:53:40', null, '2017-07-05 09:53:50', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('69', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705095701', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '349.16', '349.16', '0.00', '1', '2017-07-05 09:57:01', null, null, null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('70', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705095858', '101540071790201707057221859962', '1', '1', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 09:58:59', null, '2017-07-05 09:59:07', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('71', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705100145', '101540071790201707052171997247', '1', '1', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 10:01:46', null, '2017-07-05 10:01:54', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('72', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705101449', '101540071790201707058120872029', '1', '1', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 10:14:49', null, '2017-07-05 10:14:58', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('73', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705101937', '101540071790201707058120881222', '1', '1', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 10:19:37', null, '2017-07-05 10:19:46', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('74', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705132422', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '16|15', '1', '1', '2216.17', '2216.17', '0.00', '1', '2017-07-05 13:24:23', null, null, null, '1', 'refund');
INSERT INTO `users_orders` VALUES ('75', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705132438', null, '0', '0', '8', '2', '18409272907', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 13:24:38', null, null, null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('76', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705150212', '101540071790201707054150539687', '1', '1', '8', '2', '曹修康', '18409272907', '0', '', '1', '1', '0.02', '0.02', '0.00', '1', '2017-07-05 15:02:12', null, '2017-07-05 15:02:21', null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('77', '0', 'oG3Ulv4mO-i8kyXzf-N9R3iVxCEs', 'wx20170705150254', null, '0', '0', '8', '2', '曹修康', '18409272907', '0', '16|15', '1', '1', '2216.17', '2216.17', '0.00', '1', '2017-07-05 15:02:54', null, null, null, '1', 'refund');
INSERT INTO `users_orders` VALUES ('78', '0', 'o-Rj7wFoffAV4g43v-cDyZ3mqie4', 'wx20170705150306', '101540071790201707052272735498', '1', '1', '8', '2', '曹修康', '18409272907', '0', '5', '1', '1', '0.01', '0.01', '0.00', '1', '2017-07-05 15:03:07', null, '2017-07-05 15:03:19', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('79', '0', 'o-Rj7wC0dDo7dECY205P2-Ya37tE', 'wx20170705155154', '101540071790201707052272838748', '1', '1', '33', '18', '张三', '13152063456', '0', '', '1', '1', '1.00', '1.00', '0.00', '1', '2017-07-05 15:51:54', null, '2017-07-05 15:52:03', null, '1', 'charge');
INSERT INTO `users_orders` VALUES ('80', '0', 'o-Rj7wC0dDo7dECY205P2-Ya37tE', 'wx20170705155506', '101540071790201707055297800021', '1', '1', '33', '18', '张三', '13152063456', '0', '7', '1', '1', '202.16', '202.16', '0.00', '1', '2017-07-05 15:55:06', null, '2017-07-05 15:55:16', null, '1', 'fee');
INSERT INTO `users_orders` VALUES ('81', '0', 'oG3Ulv4dud84cAndcyF8t1UrdrY0', 'wx20170708224120', null, '0', '0', '17', '2', '周川', '15291983107', '0', '26', '1', '1', '46.79', '46.79', '0.00', '1', '2017-07-08 22:41:20', null, null, null, '1', 'refund');
INSERT INTO `users_orders` VALUES ('82', '0', 'oG3Ulv4dud84cAndcyF8t1UrdrY0', 'wx20170711143931', null, '0', '0', '17', '2', '周川', '15291983107', '0', '26|25|24|23|22|21', '1', '1', '351.20', '351.20', '0.00', '1', '2017-07-11 14:39:32', null, null, null, '1', 'refund');

-- ----------------------------
-- Table structure for users_points_records
-- ----------------------------
DROP TABLE IF EXISTS `users_points_records`;
CREATE TABLE `users_points_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `channel_id` int(10) NOT NULL DEFAULT '0',
  `uname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` smallint(4) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1收入0支出',
  `cate` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1返现0推广',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_points_records
-- ----------------------------

-- ----------------------------
-- Table structure for users_reward_records
-- ----------------------------
DROP TABLE IF EXISTS `users_reward_records`;
CREATE TABLE `users_reward_records` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `sid` int(11) NOT NULL DEFAULT '0',
  `sname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_reward_records
-- ----------------------------

-- ----------------------------
-- Table structure for users_vips
-- ----------------------------
DROP TABLE IF EXISTS `users_vips`;
CREATE TABLE `users_vips` (
  `uid` int(10) unsigned NOT NULL,
  `channel_id` int(10) NOT NULL DEFAULT '0',
  `uname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(3) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users_vips
-- ----------------------------

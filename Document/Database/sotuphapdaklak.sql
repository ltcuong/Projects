/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : sotuphapdaklak

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-03-18 17:06:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dm_huyen
-- ----------------------------
DROP TABLE IF EXISTS `dm_huyen`;
CREATE TABLE `dm_huyen` (
  `HuyenID` int(5) NOT NULL AUTO_INCREMENT,
  `HuyenMa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HuyenTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaBaoCao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhID` int(5) DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HuyenID`),
  KEY `TinhID` (`TinhID`),
  CONSTRAINT `dm_huyen_ibfk_1` FOREIGN KEY (`TinhID`) REFERENCES `dm_tinh` (`TinhID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=640 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_huyen
-- ----------------------------
INSERT INTO `dm_huyen` VALUES ('1', '10101', 'Ba Đình', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('2', '10103', 'Tây Hồ', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('3', '10105', 'Hoàn Kiếm', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('4', '10107', 'Hai Bà Trưng', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('5', '10109', 'Đống Đa', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('6', '10111', 'Thanh Xuân', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('7', '10113', 'Cầu Giấy', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('8', '10115', 'Sóc Sơn', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('9', '10117', 'Đông Anh', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('10', '10119', 'Gia Lâm', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('11', '10121', 'Từ Liêm', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('12', '10123', 'Thanh Trì', '', '1', '0');
INSERT INTO `dm_huyen` VALUES ('13', '10301', 'Hồng Bàng', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('14', '10303', 'Ngô Quyền', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('15', '10305', 'Lê Chân', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('16', '10307', 'Kiến An', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('17', '10309', 'Thị xã Đồ Sơn', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('18', '10311', 'Thuỷ Nguyên', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('19', '10313', 'An Hải', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('20', '10315', 'An Lão', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('21', '10317', 'Kiến Thụy', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('22', '10319', 'Tiên Lãng', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('23', '10321', 'Vĩnh Bảo', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('24', '10323', 'Cát Hải', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('25', '10325', ' Bạch long Vĩ', '', '2', '0');
INSERT INTO `dm_huyen` VALUES ('26', '10501', 'Thị xã Hà Đông', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('27', '10503', 'Thị xã Sơn Tây', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('28', '10505', 'Ba Vì', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('29', '10507', 'Phúc Thọ', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('30', '10509', 'Đan Phượng', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('31', '10511', 'Thạch Thất', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('32', '10513', 'Hoài Đức', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('33', '10515', 'Quốc Oai', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('34', '10517', 'Chương Mỹ', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('35', '10519', 'Thanh Oai', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('36', '10521', 'Thường Tín', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('37', '10523', 'Mỹ Đức', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('38', '10525', 'ứng Hòa', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('39', '10527', 'Phú Xuyên', '', '3', '0');
INSERT INTO `dm_huyen` VALUES ('40', '10701', 'Thành phố Hải Dương', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('41', '10703', 'Chí Linh', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('42', '10705', 'Nam Sách', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('43', '10707', 'Thanh Hà', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('44', '10709', 'Kinh Môn', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('45', '10711', 'Kim Thành', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('46', '10713', 'Gia Lộc', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('47', '10715', 'Tứ Kỳ', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('48', '10717', 'Cẩm Giàng', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('49', '10719', 'Bình Giang', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('50', '10721', 'Thanh Miện', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('51', '10723', 'Ninh Giang', '', '4', '0');
INSERT INTO `dm_huyen` VALUES ('52', '10901', 'Thị xã Hưng Yên', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('53', '10902', 'Văn Lâm', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('54', '10903', 'Mỹ Hào', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('55', '10904', 'Yên Hào', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('56', '10905', 'Khoái Châu', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('57', '10906', 'Văn Giang', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('58', '10907', 'Ân Thi', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('59', '10909', 'Kim Động', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('60', '10911', 'Phù Cừ', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('61', '10913', 'Tiên Lữ', '', '5', '0');
INSERT INTO `dm_huyen` VALUES ('62', '11101', 'Thị xã Phủ Lý', '', '6', '0');
INSERT INTO `dm_huyen` VALUES ('63', '11103', 'Duy Tiên', '', '6', '0');
INSERT INTO `dm_huyen` VALUES ('64', '11105', 'Kim Bảng', '', '6', '0');
INSERT INTO `dm_huyen` VALUES ('65', '11107', 'Lý Nhân', '', '6', '0');
INSERT INTO `dm_huyen` VALUES ('66', '11109', 'Thanh Liêm', '', '6', '0');
INSERT INTO `dm_huyen` VALUES ('67', '11111', 'Bình Lục', '', '6', '0');
INSERT INTO `dm_huyen` VALUES ('68', '11301', 'Thành phố Nam Định', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('69', '11303', 'Vụ Bản', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('70', '11305', 'Mỹ Lộc', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('71', '11307', 'ý Yên', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('72', '11309', 'Nam Trực', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('73', '11311', 'Trực Ninh', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('74', '11313', 'Xuân Trường', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('75', '11315', 'Giao Thủy', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('76', '11317', 'Nghĩa Hưng', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('77', '11319', 'Hải Hậu', '', '7', '0');
INSERT INTO `dm_huyen` VALUES ('78', '11501', 'Thị xã Thái Bình', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('79', '11503', 'Quỳnh Phụ', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('80', '11505', 'Hưng Hà', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('81', '11507', 'Thái Thụy', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('82', '11509', 'Đông Hưng', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('83', '11511', 'Vũ Thư', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('84', '11513', 'Kiến Xương', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('85', '11515', 'Tiền Hải', '', '8', '0');
INSERT INTO `dm_huyen` VALUES ('86', '11701', 'Thị xã Ninh Bình', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('87', '11703', 'Thị xã Tam Điệp', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('88', '11705', 'Nho Quan', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('89', '11707', 'Gia Viễn', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('90', '11709', 'Hoa Lư', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('91', '11711', 'Yên Mô', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('92', '11713', 'Yên Khánh', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('93', '11715', 'Kim Sơn', '', '9', '0');
INSERT INTO `dm_huyen` VALUES ('94', '20101', 'Thị xã Hà Giang', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('95', '20103', 'Đồng Văn', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('96', '20105', 'Mèo Vạc', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('97', '20107', 'Yên Minh', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('98', '20109', 'Quản Bạ', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('99', '20111', 'Bắc Mê', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('100', '20113', 'Hoàng Su Phì', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('101', '20115', 'Vị Xuyên', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('102', '20117', 'Xín Mần', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('103', '20119', 'Bắc Quang', '', '10', '0');
INSERT INTO `dm_huyen` VALUES ('104', '20301', 'Thị xã Cao Bằng', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('105', '20303', 'Bảo Lạc', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('106', '20304', 'Bảo Lâm', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('107', '20305', 'Hà Quảng', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('108', '20307', 'Thông Nông', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('109', '20309', 'Trà Lĩnh', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('110', '20311', 'Trùng Khánh', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('111', '20313', 'Nguyên Bình', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('112', '20315', 'Hòa An', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('113', '20317', 'Quảng Hòa', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('114', '20319', 'Hạ Lang', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('115', '20321', 'Thạch An', '', '11', '0');
INSERT INTO `dm_huyen` VALUES ('116', '20501', 'Thị xã Lào Cai', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('117', '20503', 'Thị xã Cam Đường', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('118', '20505', 'Mường Khương', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('119', '20507', 'Bát Xát', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('120', '20509', 'Bắc Hà', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('121', '20511', 'Bảo Thắng', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('122', '20513', 'Sa Pa', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('123', '20515', 'Bảo Yên', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('124', '20517', 'Than Uyên', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('125', '20519', 'Văn Bàn', '', '12', '0');
INSERT INTO `dm_huyen` VALUES ('126', '20701', 'Thị xã Bắc Kạn', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('127', '20703', 'Ba Bể', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('128', '20705', 'Ngân Sơn', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('129', '20707', 'Chợ Đồn', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('130', '20709', 'Nà Rì', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('131', '20711', 'Chợ Mới', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('132', '20713', 'Bạch Thông', '', '13', '0');
INSERT INTO `dm_huyen` VALUES ('133', '20901', 'Thị xã Lạng Sơn', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('134', '20903', 'Tràng Định', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('135', '20905', 'Văn Lãng', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('136', '20907', 'Bình Gia', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('137', '20909', 'Bắc Sơn', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('138', '20911', 'Văn Quán', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('139', '20913', 'Cao Lộc', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('140', '20915', 'Lộc Bình', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('141', '20917', 'Chi Lăng', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('142', '20919', 'Đình Lập', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('143', '20921', 'Hữu Lũng', '', '14', '0');
INSERT INTO `dm_huyen` VALUES ('144', '21101', 'Thị xã Tuyên Quang', '', '15', '0');
INSERT INTO `dm_huyen` VALUES ('145', '21103', 'Nà Hang', '', '15', '0');
INSERT INTO `dm_huyen` VALUES ('146', '21105', 'Chiêm Hóa', '', '15', '0');
INSERT INTO `dm_huyen` VALUES ('147', '21107', 'Hàm Yên', '', '15', '0');
INSERT INTO `dm_huyen` VALUES ('148', '21109', 'Yên Sơn', '', '15', '0');
INSERT INTO `dm_huyen` VALUES ('149', '21111', 'Sơn Dương', '', '15', '0');
INSERT INTO `dm_huyen` VALUES ('150', '21301', 'Thị xã Yên Bái', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('151', '21303', 'Thị xã Nghĩa Lộ', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('152', '21305', 'Lục Yên', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('153', '21307', 'Văn Yên', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('154', '21309', 'Mù Căng Chải', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('155', '21311', 'Trấn Yên', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('156', '21313', 'Yên Bình', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('157', '21315', 'Văn Chấn', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('158', '21317', 'Trạm Tấu', '', '16', '0');
INSERT INTO `dm_huyen` VALUES ('159', '21501', 'Thành phố Thái Nguyên', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('160', '21503', 'Thị xã Sông Công', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('161', '21505', 'Định Hóa', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('162', '21507', 'Võ Nhai', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('163', '21509', 'Phú Lương', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('164', '21511', 'Đồng Hỷ', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('165', '21513', 'Đại Từ', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('166', '21515', 'Phú Bình', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('167', '21517', 'Phổ Yên', '', '17', '0');
INSERT INTO `dm_huyen` VALUES ('168', '21701', 'Thành phố Việt Trì', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('169', '21703', 'Thị xã Phú Thọ', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('170', '21705', 'Đoan Hùng', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('171', '21707', 'Hạ Hòa', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('172', '21709', 'Thanh Ba', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('173', '21711', 'Phù Ninh', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('174', '21712', 'Lâm Thao', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('175', '21713', 'Sông Thao', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('176', '21715', 'Yên Lập', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('177', '21717', 'Tam Nông', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('178', '21718', 'Thanh Thuỷ', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('179', '21719', 'Thanh Sơn', '', '18', '0');
INSERT INTO `dm_huyen` VALUES ('180', '21901', 'Thị xã Vĩnh Yên', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('181', '21903', 'Lập Thạch', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('182', '21905', 'Tam Dương', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('183', '21907', 'Vĩnh Tường', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('184', '21909', 'Yên Lạc', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('185', '21911', 'Mê Linh', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('186', '21913', 'Bình Xuyên', '', '19', '0');
INSERT INTO `dm_huyen` VALUES ('187', '22101', 'Thị xã Bắc Giang', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('188', '22103', 'Yên Thế', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('189', '22105', 'Tân Yên', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('190', '22107', 'Lục Ngạn', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('191', '22109', 'Hiệp Hòa', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('192', '22111', 'Lạng Giang', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('193', '22113', 'Sơn Động', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('194', '22115', 'Lục Nam', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('195', '22117', 'Việt Yên', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('196', '22119', 'Yên Dũng', '', '20', '0');
INSERT INTO `dm_huyen` VALUES ('197', '22300', 'PC14', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('198', '22301', 'Thị xã Bắc Ninh', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('199', '22303', 'Yên Phong', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('200', '22305', 'Quế Võ', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('201', '22307', 'Tiên Du', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('202', '22308', 'Từ Sơn', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('203', '22309', 'Thuận Thành', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('204', '22311', 'Gia Bình', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('205', '22313', 'Lương Tài', '', '21', '0');
INSERT INTO `dm_huyen` VALUES ('206', '22501', 'Thành phố Hạ Long', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('207', '22503', 'Thị xã Cẩm Phả', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('208', '22505', 'Thị xã Uông Bí', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('209', '22507', 'Thị xã Móng Cái', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('210', '22509', 'Bình Liêu', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('211', '22511', 'Quảng Hà', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('212', '22513', 'Tiên Yên', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('213', '22515', 'Ba Chẽ', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('214', '22517', 'Vân Đồn', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('215', '22519', 'Hoành Bồ', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('216', '22521', 'Đông Triều', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('217', '22523', 'Cô Tô', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('218', '22525', 'Yên Hưng', '', '22', '0');
INSERT INTO `dm_huyen` VALUES ('219', '30101', 'Thị xã Điện Biên Phủ', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('220', '30103', 'Thị xã Lai Châu', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('221', '30105', 'Mường Tè', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('222', '30107', 'Phong Thổ', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('223', '30109', 'Sìn Hồ', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('224', '30111', 'Mường Lay', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('225', '30113', 'Tủa Chùa', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('226', '30115', 'Tuần Giáo', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('227', '30117', 'Điện Biên', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('228', '30119', 'Điện Biên Đông', '', '23', '0');
INSERT INTO `dm_huyen` VALUES ('229', '30301', 'Thị xã Sơn La', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('230', '30303', 'Quỳnh Nhai', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('231', '30305', 'Mường La', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('232', '30307', 'Thuận Châu', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('233', '30309', 'Bắc Yên', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('234', '30311', 'Phù Yên', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('235', '30313', 'Mai Sơn', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('236', '30315', 'Sông Mã', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('237', '30317', 'Yên Châu', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('238', '30319', 'Mộc Châu', '', '24', '0');
INSERT INTO `dm_huyen` VALUES ('239', '30501', 'Thị xã Hòa Bình', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('240', '30503', 'Đà Bắc', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('241', '30505', 'Mai Châu', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('242', '30507', 'Kỳ Sơn', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('243', '30509', 'Lương Sơn', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('244', '30511', 'Kim Bôi', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('245', '30513', 'Tân Lạc', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('246', '30515', 'Lạc Sơn', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('247', '30517', 'Lạc Thủy', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('248', '30519', 'Yên Thủy', '', '25', '0');
INSERT INTO `dm_huyen` VALUES ('249', '40101', 'Thành phố Thanh Hóa', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('250', '40103', 'Thị xã Bỉm Sơn', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('251', '40105', 'Thị xã Sầm Sơn', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('252', '40107', 'Mường Lát', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('253', '40109', 'Quan Hóa', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('254', '40111', 'Quan Sơn', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('255', '40113', 'Bá Thước', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('256', '40115', 'Cẩm thủy', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('257', '40117', 'Lang Chánh', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('258', '40119', 'Thạch Thành', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('259', '40121', 'Ngọc Lạc', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('260', '40123', 'Thường Xuân', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('261', '40125', 'Như Xuân', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('262', '40127', 'Như Thanh', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('263', '40129', 'Vĩnh Lộc', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('264', '40131', 'Hà Trung', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('265', '40133', 'Nga Sơn', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('266', '40135', 'Yên Định', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('267', '40137', 'Thọ Xuân', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('268', '40139', 'Hậu Lộc', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('269', '40141', 'Thiệu Hóa', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('270', '40143', 'Hoằng Hóa', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('271', '40145', 'Đông Sơn', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('272', '40147', 'Triệu Sơn', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('273', '40149', 'Quảng Xương', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('274', '40151', 'Nông Cống', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('275', '40153', 'Tĩnh Gia', '', '26', '0');
INSERT INTO `dm_huyen` VALUES ('276', '40301', 'Thành phố Vinh', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('277', '40303', 'Thị xã Cửa Lò', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('278', '40305', 'Quế Phong', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('279', '40307', 'Quỳ Châu', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('280', '40309', 'Kỳ Sơn', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('281', '40311', 'Quỳ Hợp', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('282', '40313', 'Nghĩa Đàn', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('283', '40315', 'Tương Dương', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('284', '40317', 'Quỳnh Lưu', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('285', '40319', 'Tân Kỳ', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('286', '40321', 'Con Cuông', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('287', '40323', 'Yên Thành', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('288', '40325', 'Diễn Châu', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('289', '40327', 'Anh Sơn', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('290', '40329', 'Đô Lương', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('291', '40331', 'Thanh Chương', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('292', '40333', 'Nghi Lộc', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('293', '40335', 'Nam Đàn', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('294', '40337', 'Hưng Nguyên', '', '27', '0');
INSERT INTO `dm_huyen` VALUES ('295', '40501', 'Thị xã Hà Tĩnh', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('296', '40503', 'Thị xã Hồng Lĩnh', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('297', '40505', 'Nghi Xuân', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('298', '40507', 'Đức Thọ', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('299', '40509', 'Hương Sơn', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('300', '40511', 'Can Lộc', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('301', '40513', 'Thạch Hà', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('302', '40515', 'Cẩm Xuyên', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('303', '40517', 'Hương Khê', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('304', '40519', 'Kỳ Anh', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('305', '40521', 'Vũ Quang', '', '28', '0');
INSERT INTO `dm_huyen` VALUES ('306', '40701', 'Thị xã Đồng Hới', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('307', '40703', 'Tuyên Hóa', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('308', '40705', 'Minh Hóa', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('309', '40707', 'Quảng Trạch', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('310', '40709', 'Bố Trạch', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('311', '40711', 'Quảng Ninh', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('312', '40713', 'Lệ Thủy', '', '29', '0');
INSERT INTO `dm_huyen` VALUES ('313', '40901', 'Thị xã Đông Hà', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('314', '40903', 'Thị xã Quảng Trị', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('315', '40905', 'Vĩnh Linh', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('316', '40907', 'Gio Linh', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('317', '40909', 'Cam Lộ', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('318', '40911', 'Triệu Phong', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('319', '40913', 'Hải Lăng', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('320', '40915', 'Hướng Hóa', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('321', '40917', 'Đa Krông', '', '30', '0');
INSERT INTO `dm_huyen` VALUES ('322', '41101', 'Thành phố Huế', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('323', '41103', 'Phong Điền', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('324', '41105', 'Quảng Điền', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('325', '41107', 'Hương Trà', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('326', '41109', 'Phú Vang', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('327', '41111', 'Hương Thủy', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('328', '41113', 'Phú Lộc', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('329', '41115', 'A Lưới', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('330', '41117', 'Nam Đông', '', '31', '0');
INSERT INTO `dm_huyen` VALUES ('331', '50101', 'Thành phố Đà Nẵng', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('332', '50103', 'Thanh Khê', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('333', '50105', 'Sơn Trà', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('334', '50107', 'Ngũ Hành Sơn', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('335', '50109', 'Liên Chiểu', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('336', '50111', 'Hòa Vang', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('337', '50113', 'đảo Hoàng Sa', '', '32', '0');
INSERT INTO `dm_huyen` VALUES ('338', '50301', 'Thị xã Tam Kỳ', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('339', '50303', 'Thị xã Hội An', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('340', '50305', 'Hiên', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('341', '50307', 'Đại Lộc', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('342', '50309', 'Điện Bàn', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('343', '50311', 'Duy Xuyên', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('344', '50313', 'Giằng', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('345', '50315', 'Thăng Bình', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('346', '50317', 'Quế Sơn', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('347', '50319', 'Hiệp Đức', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('348', '50321', 'Tiên Phước', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('349', '50323', 'Phước Sơn', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('350', '50325', 'Núi Thành', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('351', '50327', 'Trà My', '', '33', '0');
INSERT INTO `dm_huyen` VALUES ('352', '50501', 'Thị xã Quảng Ngãi', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('353', '50503', 'Lý Sơn', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('354', '50505', 'Bình Sơn', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('355', '50507', 'Trà Bồng', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('356', '50509', 'Sơn Tịnh', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('357', '50511', 'Sơn Tây', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('358', '50513', 'Sơn Hà', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('359', '50515', 'Tư Nghĩa', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('360', '50517', 'Nghĩa Hành', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('361', '50519', 'Minh Long', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('362', '50521', 'Mộ Đức', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('363', '50523', 'Đức Phổ', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('364', '50525', 'Ba Tơ', '', '34', '0');
INSERT INTO `dm_huyen` VALUES ('365', '50701', 'Thành phố Qui Nhơn', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('366', '50703', 'An Lão', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('367', '50705', 'Hoài Nhơn', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('368', '50707', 'Hoài Ân', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('369', '50709', 'Phù Mỹ', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('370', '50711', 'Vĩnh Thạnh', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('371', '50713', 'Phù Cát', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('372', '50715', 'Tây Sơn', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('373', '50717', 'An Nhơn', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('374', '50719', 'Tuy Phước', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('375', '50721', 'Vân Canh', '', '35', '0');
INSERT INTO `dm_huyen` VALUES ('376', '50901', 'Thị xã Tuy Hòa', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('377', '50903', 'Đồng Xuân', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('378', '50905', 'Sông Cầu', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('379', '50907', 'Tuy An', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('380', '50909', 'Sơn Hòa', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('381', '50911', 'Tuy Hòa', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('382', '50913', 'Sông Hinh', '', '36', '0');
INSERT INTO `dm_huyen` VALUES ('383', '51101', 'Thành phố Nha Trang', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('384', '51103', 'Vạn Ninh', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('385', '51105', 'Ninh Hòa', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('386', '51107', 'Diên Khánh', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('387', '51109', 'Thị xã Cam Ranh', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('388', '51111', 'Khánh Vĩnh', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('389', '51113', 'Khánh Sơn', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('390', '51115', 'Trường Sa', '', '37', '0');
INSERT INTO `dm_huyen` VALUES ('391', '60101', 'Thành Phố Pleiku1', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('392', '60103', 'Đắc Glei', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('393', '60105', 'Ngọc Hồi', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('394', '60107', 'Đắc Tô', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('395', '60109', 'Con Plông', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('396', '60111', 'Đắc Hà', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('397', '60113', 'Sa Thầy', '', '38', '0');
INSERT INTO `dm_huyen` VALUES ('398', '60301', 'Thành phố Pleiku', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('399', '60303', 'Thị xã An Khê', '', '39', '1');
INSERT INTO `dm_huyen` VALUES ('400', '60305', 'Mang Yang', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('401', '60307', 'Chư Păh', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('402', '60309', 'Ia Grai', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('403', '60311', 'An Khê', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('404', '60313', 'Krông Chro', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('405', '60315', 'Đức Cơ', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('406', '60317', 'Chư Prông', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('407', '60319', 'Chư Sê', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('408', '60321', 'Ayun Pa', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('409', '60323', 'Krông Pa', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('410', '60501', 'Thành phố Buôn Ma Thuột', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('411', '60503', 'Ea H\'leo', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('412', '60505', 'Ea Súp', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('413', '60507', 'Krông Năng', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('414', '60509', 'Krông Búk', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('415', '60511', 'Buôn Đôn', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('416', '60513', 'Cư M\'gar', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('417', '60515', 'Ea Kar', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('418', '60517', 'M\'Đrắk', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('419', '60519', 'Krông Pắk', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('420', '60521', 'Cư Jút', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('421', '60523', 'Krông A Na', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('422', '60525', 'Krông Bông', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('423', '60527', 'Đắc Mil', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('424', '60529', 'Krông Nô', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('425', '60531', 'Lắk', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('426', '60533', 'Đắk R\'lLấp', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('427', '60535', 'Đắk Nông', '', '40', '0');
INSERT INTO `dm_huyen` VALUES ('428', '70101', '1', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('429', '70103', '2', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('430', '70105', '3', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('431', '70107', '4', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('432', '70109', '5', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('433', '70111', '6', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('434', '70113', '7', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('435', '70115', '8', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('436', '70117', '9', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('437', '70119', '10', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('438', '70121', '11', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('439', '70123', '12', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('440', '70125', 'Gò Vấp', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('441', '70127', 'Tân Bình', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('442', '70129', 'Bình Thạnh', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('443', '70131', 'Phú Nhuận', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('444', '70133', 'Thủ Đức', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('445', '70135', 'Củ Chi', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('446', '70137', 'Hóc Môn', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('447', '70139', 'Bình Chánh', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('448', '70141', 'Nhà Bè', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('449', '70143', 'Cần Giờ', '', '41', '0');
INSERT INTO `dm_huyen` VALUES ('450', '70301', 'Thành phố Đà Lạt', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('451', '70303', 'Thị xã Bảo Lộc', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('452', '70305', 'Lạc Dương', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('453', '70307', 'Đơn Dương', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('454', '70309', 'Đức Trọng', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('455', '70311', 'Lâm Hà', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('456', '70313', 'Bảo Lâm', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('457', '70315', 'Di Linh', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('458', '70317', 'Đạ Huoai', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('459', '70319', 'Đạ Tẻh', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('460', '70321', 'Cát Tiên', '', '42', '0');
INSERT INTO `dm_huyen` VALUES ('461', '70501', 'T.xã Phan Rang-Tháp Chàm', '', '43', '0');
INSERT INTO `dm_huyen` VALUES ('462', '70503', 'Ninh Sơn', '', '43', '0');
INSERT INTO `dm_huyen` VALUES ('463', '70505', 'Ninh Hải', '', '43', '0');
INSERT INTO `dm_huyen` VALUES ('464', '70507', 'Ninh Phước', '', '43', '0');
INSERT INTO `dm_huyen` VALUES ('465', '70701', 'Thị xã Đồng Xoài', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('466', '70702', 'Đồng Phú', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('467', '70703', 'Phước Long', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('468', '70705', 'Lộc Ninh', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('469', '70707', 'Bù Đăng', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('470', '70709', 'Bình Long', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('471', '70901', 'Thị xã Tây Ninh', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('472', '70903', 'Tân Biên', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('473', '70905', 'Tân Châu', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('474', '70907', 'Dương Minh Châu', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('475', '70909', 'Châu Thành TN', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('476', '70911', 'Hòa Thành', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('477', '70913', 'Bến Cầu', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('478', '70915', 'Gò Dầu', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('479', '70917', 'Trảng Bàng', '', '45', '0');
INSERT INTO `dm_huyen` VALUES ('480', '71101', 'Thị xã Thủ Dầu Một', '', '46', '0');
INSERT INTO `dm_huyen` VALUES ('481', '71103', 'Bến Cát', '', '46', '0');
INSERT INTO `dm_huyen` VALUES ('482', '71105', 'Tân Uyên', '', '46', '0');
INSERT INTO `dm_huyen` VALUES ('483', '71107', 'Thuận An', '', '46', '0');
INSERT INTO `dm_huyen` VALUES ('484', '71301', 'Thành phố Biên Hòa', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('485', '71303', 'Tân Phú', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('486', '71305', 'Định Quán', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('487', '71307', 'Vĩnh Cừu', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('488', '71309', 'Thống Nhất', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('489', '71311', 'Long Khánh', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('490', '71313', 'Xuân Lộc', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('491', '71315', 'Long Thành', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('492', '71317', 'Nhơn Trạch', '', '47', '0');
INSERT INTO `dm_huyen` VALUES ('493', '71501', 'Thị xã Phan Thiết', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('494', '71503', 'Tuy Phong', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('495', '71505', 'Bắc Bình', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('496', '71507', 'Hàm Thuận Bắc', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('497', '71509', 'Hàm Thuận Nam', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('498', '71511', 'Tánh Linh', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('499', '71513', 'Hàm Tân', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('500', '71515', 'Đức Linh', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('501', '71517', 'Phú Quý', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('502', '71701', 'Thành phố Vũng Tầu', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('503', '71703', 'Thị xã Bà Rịa', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('504', '71705', 'Châu đức', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('505', '71707', 'Xuyên Mộc', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('506', '71709', 'Tân Thành', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('507', '71711', 'Long Đất', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('508', '71713', 'Côn Đảo', '', '49', '0');
INSERT INTO `dm_huyen` VALUES ('509', '80101', 'Thị xã Tân An', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('510', '80103', 'Tân Hưng', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('511', '80105', 'Vĩnh Hưng', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('512', '80107', 'Mộc Hóa', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('513', '80109', 'Tân Thạnh', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('514', '80111', 'Thạnh Hóa', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('515', '80113', 'Đức Huệ', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('516', '80115', 'Đức Hòa', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('517', '80117', 'Bến Lức', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('518', '80119', 'Thủ Thừa', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('519', '80121', 'Châu Thành', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('520', '80123', 'Tân Trụ', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('521', '80125', 'Cần Đước', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('522', '80127', 'Cần Giuộc', '', '50', '0');
INSERT INTO `dm_huyen` VALUES ('523', '80301', 'Thị xã Cao Lãnh', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('524', '80303', 'Thị xã Sa Đéc', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('525', '80305', 'Tân Hồng', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('526', '80307', 'Hồng Ngự', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('527', '80309', 'Tam Nông', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('528', '80311', 'Thanh Bình', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('529', '80313', 'Tháp Mười', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('530', '80315', 'Cao Lãnh', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('531', '80317', 'Lấp Vò', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('532', '80319', 'Lai Vung', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('533', '80321', 'Châu Thành  ĐT', '', '51', '0');
INSERT INTO `dm_huyen` VALUES ('534', '80501', 'Thành Phố  Long Xuyên', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('535', '80503', 'Thị xã Châu Đốc', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('536', '80505', 'An Phú', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('537', '80507', 'Tân Châu', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('538', '80509', 'Phú Tân', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('539', '80511', 'Châu Phú', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('540', '80513', 'Tịnh Biên', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('541', '80515', 'Tri Tôn', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('542', '80517', 'Chợ Mới', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('543', '80519', 'Châu Thành AG', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('544', '80521', 'Thoại Sơn', '', '52', '0');
INSERT INTO `dm_huyen` VALUES ('545', '80701', 'Thành phố Mỹ Tho', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('546', '80703', 'Thị xã Gò Công', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('547', '80705', 'Tân Phước', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('548', '80707', 'Châu Thành', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('549', '80709', 'Cai Lậy', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('550', '80711', 'Chợ Gạo', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('551', '80713', 'Cái Bè', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('552', '80715', 'Gò Công Tây', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('553', '80717', 'Gò Công Đông', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('554', '80901', 'Thị xã Vĩnh Long', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('555', '80903', 'Long Hồ', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('556', '80905', 'Mang Thít', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('557', '80907', 'Bình Minh', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('558', '80909', 'Tam Bình', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('559', '80911', 'Trà Ôn', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('560', '80913', 'Vũng Liêm', '', '54', '0');
INSERT INTO `dm_huyen` VALUES ('561', '81101', 'Thị xã Bến Tre', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('562', '81103', 'Châu Thành BT', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('563', '81105', 'Chợ Lách', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('564', '81107', 'Mỏ Cày', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('565', '81109', 'Giồng Trôm', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('566', '81111', 'Bình Đại', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('567', '81113', 'Ba Tri', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('568', '81115', 'Thạnh Phú', '', '55', '0');
INSERT INTO `dm_huyen` VALUES ('569', '81301', 'Thị xã Rạch Giá', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('570', '81303', 'Thị xã  Hà Tiên', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('571', '81305', 'Hòn Đất', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('572', '81307', 'Tân Hiệp', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('573', '81309', 'Châu Thành KG', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('574', '81311', 'Giồng Riềng', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('575', '81313', 'Gò Quao', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('576', '81315', 'An Biên', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('577', '81317', 'An Minh', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('578', '81319', 'Vĩnh Thuận', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('579', '81321', 'Phú Quốc', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('580', '81323', 'Kiên Hải', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('581', '81325', 'Hà Tiên', '', '56', '0');
INSERT INTO `dm_huyen` VALUES ('582', '81501', 'Bình Thủy', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('583', '81502', 'Cái Răng', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('584', '81503', 'Thốt Nốt', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('585', '81505', 'Ô Môn', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('586', '81507', 'Ninh Kiều', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('587', '81509', 'Cờ Đỏ', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('588', '81511', 'Phong Điền', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('589', '81513', 'Thới Lai', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('590', '81701', 'Thành phố Trà Vinh', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('591', '81703', 'Càng Long', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('592', '81705', 'Châu Thành', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('593', '81707', 'Cầu Kè', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('594', '81709', 'Tiểu Cần', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('595', '81711', 'Cầu Ngang', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('596', '81713', 'Trà Cú', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('597', '81715', 'Duyên Hải', '', '58', '0');
INSERT INTO `dm_huyen` VALUES ('598', '81901', 'Thị xã Sóc Trăng', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('599', '81903', 'Kế Sách', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('600', '81905', 'Long Phú', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('601', '81907', 'Mỹ Tú', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('602', '81909', 'Mỹ Xuyên', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('603', '81911', 'Thạnh Trị', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('604', '81913', 'Vĩnh Châu', '', '59', '0');
INSERT INTO `dm_huyen` VALUES ('605', '82101', 'Thị xã Bạc Liêu', '', '60', '0');
INSERT INTO `dm_huyen` VALUES ('606', '82103', 'Hồng Dân', '', '60', '0');
INSERT INTO `dm_huyen` VALUES ('607', '82105', 'Vĩnh Lợi', '', '60', '0');
INSERT INTO `dm_huyen` VALUES ('608', '82107', 'Giá Rai', '', '60', '0');
INSERT INTO `dm_huyen` VALUES ('609', '82109', 'Phước Long', '', '60', '0');
INSERT INTO `dm_huyen` VALUES ('610', '82301', 'Thành Phố  Cà Mau', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('611', '82303', 'Thới Bình', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('612', '82305', 'U Minh', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('613', '82307', 'Trần Văn Thời', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('614', '82309', 'Cái  Nước', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('615', '82311', 'Đầm Dơi', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('616', '82313', 'Ngọc Hiển', '', '61', '0');
INSERT INTO `dm_huyen` VALUES ('617', '70704', 'Bù Đốp', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('618', '70708', 'Bù Gia Mập', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('619', '70710', 'Chơn Thành', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('620', '70711', 'Hớn Quản', '', '48', '0');
INSERT INTO `dm_huyen` VALUES ('621', '71502', 'La Gi', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('622', '71504', 'Bắc Bình', '', '44', '0');
INSERT INTO `dm_huyen` VALUES ('623', '81515', 'Vĩnh Thạnh', '', '57', '0');
INSERT INTO `dm_huyen` VALUES ('624', '1111', 'Thành phố Vị Thanh ', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('625', '1112', 'Thị xã Ngã Bảy', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('626', '1113', 'Huyện Châu Thành', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('627', '1114', 'Huyện Châu Thành A', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('628', '1115', 'Huyện Long Mỹ', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('629', '1116', 'Huyện Long Mỹ', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('630', '296', 'Huyện Long Mỹ', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('631', '297', 'Huyện Vị Thủy', '', '64', '0');
INSERT INTO `dm_huyen` VALUES ('632', '60329', 'Ia Pa', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('634', '60304', 'Chư Pưh', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('635', '60325', 'ĐăkPơ', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('636', '60327', 'Phú Thiện', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('637', '60331', 'ĐăkĐoa', '', '39', '0');
INSERT INTO `dm_huyen` VALUES ('638', '80719', 'Thị xã Cai Lậy', '', '53', '0');
INSERT INTO `dm_huyen` VALUES ('639', '80721', 'Tân Phú Đông', '', '53', '0');

-- ----------------------------
-- Table structure for dm_loaiduongsu
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaiduongsu`;
CREATE TABLE `dm_loaiduongsu` (
  `LoaiDuongSuID` int(5) NOT NULL AUTO_INCREMENT,
  `LoaiDuongSuTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`LoaiDuongSuID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_loaiduongsu
-- ----------------------------
INSERT INTO `dm_loaiduongsu` VALUES ('1', 'Bên A', '0');
INSERT INTO `dm_loaiduongsu` VALUES ('2', 'Bên B', '0');
INSERT INTO `dm_loaiduongsu` VALUES ('3', 'Bên C', '0');
INSERT INTO `dm_loaiduongsu` VALUES ('4', 'Đồng sở hữu', '1');
INSERT INTO `dm_loaiduongsu` VALUES ('5', 'Người uỷ quyền', '1');

-- ----------------------------
-- Table structure for dm_loaigiayto
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaigiayto`;
CREATE TABLE `dm_loaigiayto` (
  `LoaiGiayToID` int(11) NOT NULL AUTO_INCREMENT,
  `LoaiGiayToTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`LoaiGiayToID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_loaigiayto
-- ----------------------------
INSERT INTO `dm_loaigiayto` VALUES ('1', 'Chứng minh nhân dân', '0');
INSERT INTO `dm_loaigiayto` VALUES ('2', 'Sổ hộ chiếu', '0');
INSERT INTO `dm_loaigiayto` VALUES ('3', 'Bằng lái xe', '0');

-- ----------------------------
-- Table structure for dm_loaihopdong
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaihopdong`;
CREATE TABLE `dm_loaihopdong` (
  `LoaiHopDongID` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoBenC` tinyint(1) DEFAULT '0',
  `CoDoiChuSoHuu` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`LoaiHopDongID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_loaihopdong
-- ----------------------------
INSERT INTO `dm_loaihopdong` VALUES ('1', 'Thế chấp', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('2', 'Chuyển nhượng', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('3', 'Tặng cho', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('4', 'Mua bán', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('5', 'Ủy quyền', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('6', 'Thừa kế', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('7', 'Thuê', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('8', 'Góp vốn', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('9', 'Cầm cố', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('10', 'Di chúc', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('11', 'Chuyển đổi', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('12', 'Hủy bỏ', '0', '0');
INSERT INTO `dm_loaihopdong` VALUES ('13', 'Hợp đồng soạn sẵn', '0', '0');

-- ----------------------------
-- Table structure for dm_loaihopdongchitiet
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaihopdongchitiet`;
CREATE TABLE `dm_loaihopdongchitiet` (
  `LoaiHopDongChiTietID` int(11) NOT NULL AUTO_INCREMENT,
  `LoaiHopDongChiTietTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoaiHopDongChiTietID`),
  KEY `LoaiHopDongID` (`LoaiHopDongID`),
  CONSTRAINT `dm_loaihopdongchitiet_ibfk_1` FOREIGN KEY (`LoaiHopDongID`) REFERENCES `dm_loaihopdong` (`LoaiHopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_loaihopdongchitiet
-- ----------------------------
INSERT INTO `dm_loaihopdongchitiet` VALUES ('1', 'Thế chấp quyền sử dụng đất và tài sản gắn liền với đất ', '1');
INSERT INTO `dm_loaihopdongchitiet` VALUES ('2', 'Thế chấp tài sản gắn liền với đất', '1');
INSERT INTO `dm_loaihopdongchitiet` VALUES ('3', 'Thế chấp căn hộ chung cư của bên thứ ba', '1');
INSERT INTO `dm_loaihopdongchitiet` VALUES ('4', 'Thế chấp căn hộ chung cư', '1');
INSERT INTO `dm_loaihopdongchitiet` VALUES ('5', 'Thế chấp quyền sử dụng đât', '1');
INSERT INTO `dm_loaihopdongchitiet` VALUES ('6', 'Thế chấp quyền sử dụng đất và tài sản gắn liền với đất bên thứ ba', '1');

-- ----------------------------
-- Table structure for dm_loaitaisan
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaitaisan`;
CREATE TABLE `dm_loaitaisan` (
  `LoaiTaiSanID` int(11) NOT NULL AUTO_INCREMENT,
  `LoaiTaiSanTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LoaiTaiSanID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_loaitaisan
-- ----------------------------
INSERT INTO `dm_loaitaisan` VALUES ('1', 'Nhà');

-- ----------------------------
-- Table structure for dm_loaitaisan_hopdong
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaitaisan_hopdong`;
CREATE TABLE `dm_loaitaisan_hopdong` (
  `LoaiTaiSanID` int(11) NOT NULL,
  `LoaiHopDongID` int(11) NOT NULL,
  PRIMARY KEY (`LoaiTaiSanID`,`LoaiHopDongID`),
  KEY `LoaiHopDongID` (`LoaiHopDongID`),
  CONSTRAINT `dm_loaitaisan_hopdong_ibfk_1` FOREIGN KEY (`LoaiTaiSanID`) REFERENCES `dm_loaitaisan` (`LoaiTaiSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `dm_loaitaisan_hopdong_ibfk_2` FOREIGN KEY (`LoaiHopDongID`) REFERENCES `dm_loaihopdong` (`LoaiHopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_loaitaisan_hopdong
-- ----------------------------

-- ----------------------------
-- Table structure for dm_tinh
-- ----------------------------
DROP TABLE IF EXISTS `dm_tinh`;
CREATE TABLE `dm_tinh` (
  `TinhID` int(5) NOT NULL AUTO_INCREMENT,
  `TinhMa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenThanhPho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaBaoCao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TinhID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_tinh
-- ----------------------------
INSERT INTO `dm_tinh` VALUES ('1', '101', 'Hà Nội', '', null, '0');
INSERT INTO `dm_tinh` VALUES ('2', '103', 'Hải Phòng', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('3', '105', 'Hà Tây', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('4', '107', 'Hải Dương', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('5', '109', 'Hưng Yên', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('6', '111', 'Hà Nam', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('7', '113', 'Nam Định', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('8', '115', 'Thái Bình', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('9', '117', 'Ninh Bình', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('10', '201', 'Hà Giang', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('11', '203', 'Cao Bằng', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('12', '205', 'Lào Cai', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('13', '207', 'Bắc Kạn', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('14', '209', 'Lạng Sơn', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('15', '211', 'Tuyên Quang', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('16', '213', 'Yên Bái', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('17', '215', 'Thái Nguyên', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('18', '217', 'Phú Thọ', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('19', '219', 'Vĩnh Phúc', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('20', '221', 'Bắc Giang', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('21', '223', 'Bắc Ninh', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('22', '225', 'Quảng Ninh', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('23', '301', 'Lai Châu', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('24', '303', 'Sơn La', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('25', '305', 'Hoà Bình', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('26', '401', 'Thanh Hoá', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('27', '403', 'Nghệ An', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('28', '405', 'Hà Tĩnh', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('29', '407', 'Quảng Bình', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('30', '409', 'Quảng Trị', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('31', '411', 'Thừa Thiên Huế', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('32', '501', 'Đà nẵng', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('33', '503', 'Quảng Nam', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('34', '505', 'Quảng Ngãi', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('35', '507', 'Bình Định', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('36', '509', 'Phú Yên', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('37', '511', 'Khánh Hoà', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('38', '601', 'Kon Tum', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('39', '603', 'Gia Lai', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('40', '605', 'Đắc Lắc', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('41', '701', 'TP.Hồ Chí Minh', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('42', '703', 'Lâm Đồng', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('43', '705', 'Ninh Thuận', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('44', '707', 'Bình Thuận', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('45', '709', 'Tây Ninh', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('46', '711', 'Bình Dương', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('47', '713', 'Đồng Nai', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('48', '715', 'Bình Phước', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('49', '717', 'Bà Rịa-Vũng Tàu', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('50', '801', 'Long An', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('51', '803', 'Đồng Tháp', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('52', '805', 'An Giang', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('53', '807', 'Tiền Giang', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('54', '809', 'Vĩnh Long', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('55', '811', 'Bến Tre', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('56', '813', 'Kiên Giang', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('57', '815', 'Cần Thơ', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('58', '817', 'Trà Vinh', '', null, '0');
INSERT INTO `dm_tinh` VALUES ('59', '819', 'Sóc Trăng', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('60', '821', 'Bạc Liêu', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('61', '823', 'Cà Mau', null, null, '0');
INSERT INTO `dm_tinh` VALUES ('64', '825', 'Hậu Giang', '', null, '0');

-- ----------------------------
-- Table structure for dm_tinhtrang
-- ----------------------------
DROP TABLE IF EXISTS `dm_tinhtrang`;
CREATE TABLE `dm_tinhtrang` (
  `TinhTrangID` int(5) NOT NULL AUTO_INCREMENT,
  `TinhTrangTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoTheChinhSua` tinyint(1) DEFAULT NULL,
  `CoTheXoa` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`TinhTrangID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_tinhtrang
-- ----------------------------

-- ----------------------------
-- Table structure for dm_xa
-- ----------------------------
DROP TABLE IF EXISTS `dm_xa`;
CREATE TABLE `dm_xa` (
  `XaID` int(5) NOT NULL AUTO_INCREMENT,
  `XaMa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XaTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaBaoCao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HuyenID` int(5) DEFAULT NULL,
  `Locked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`XaID`),
  KEY `HuyenID` (`HuyenID`),
  CONSTRAINT `dm_xa_ibfk_1` FOREIGN KEY (`HuyenID`) REFERENCES `dm_huyen` (`HuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10516 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of dm_xa
-- ----------------------------
INSERT INTO `dm_xa` VALUES ('1', '1010101', 'Phúc Xá', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('2', '1010103', 'Nguyễn Trung Trực', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('3', '1010105', 'Quán Thánh', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('4', '1010107', 'Trúc Bạch', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('5', '1010109', 'Điện Biên', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('6', '1010111', 'Kim Mã', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('7', '1010113', 'Đội Cấn', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('8', '1010115', 'Cống Vị', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('9', '1010117', 'Ngọc Khánh', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('10', '1010119', 'Giảng Võ', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('11', '1010121', 'Ngọc Hà', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('12', '1010123', 'Thành Công', '', '1', '0');
INSERT INTO `dm_xa` VALUES ('13', '1010301', 'Bưởi', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('14', '1010303', 'Thuỵ Khuê', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('15', '1010305', 'Yên Phụ', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('16', '1010307', 'Tứ Liên', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('17', '1010309', 'Nhật Tân', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('18', '1010311', 'Quảng An', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('19', '1010313', 'Xuân La', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('20', '1010315', 'Phú Thượng', '', '2', '0');
INSERT INTO `dm_xa` VALUES ('21', '1010501', 'Cửa Nam', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('22', '1010503', 'Trần Hưng Đạo', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('23', '1010505', 'Hàng Bài', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('24', '1010507', 'Phan Chu Trinh', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('25', '1010509', 'Tràng Tiền', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('26', '1010511', 'Hàng Bạc', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('27', '1010513', 'Lý Thái Tổ', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('28', '1010515', 'Hàng Buồm', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('29', '1010517', 'Đồng Xuân', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('30', '1010519', 'Hàng Đào', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('31', '1010521', 'Hàng Mã', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('32', '1010523', 'Hàng Bồ', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('33', '1010525', 'Cửa Đông', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('34', '1010527', 'Hàng Bông', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('35', '1010529', 'Hàng Gai', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('36', '1010531', 'Hàng Trống', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('37', '1010533', 'Phúc Tân', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('38', '1010535', 'Chương Dương Độ', '', '3', '0');
INSERT INTO `dm_xa` VALUES ('39', '1010701', 'Nguyễn Du', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('40', '1010703', 'Lê Đại Hành', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('41', '1010705', 'Bùi Thị Xuân', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('42', '1010707', 'Phố Huế', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('43', '1010709', 'Ngô Thì Nhậm', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('44', '1010711', 'Phạm Đình Hồ', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('45', '1010713', 'Đồng Nhân', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('46', '1010715', 'Đông Mác', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('47', '1010717', 'Bạch Đằng', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('48', '1010719', 'Thanh Lương', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('49', '1010721', 'Thanh Nhàn', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('50', '1010723', 'Cầu Dền', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('51', '1010725', 'Bách Khoa', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('52', '1010727', 'Bạch Mai', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('53', '1010729', 'Quỳnh Lôi', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('54', '1010731', 'Quỳnh Mai', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('55', '1010733', 'Vĩnh Tuy', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('56', '1010735', 'Minh Khai', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('57', '1010737', 'Trương Định', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('58', '1010739', 'Đồng Tâm', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('59', '1010741', 'Tương Mai', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('60', '1010743', 'Giáp Bát', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('61', '1010745', 'Mai Động', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('62', '1010747', 'Tân Mai', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('63', '1010749', 'Hoàng Văn Thụ', '', '4', '0');
INSERT INTO `dm_xa` VALUES ('64', '1010901', 'Văn Miếu', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('65', '1010903', 'Cát Linh', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('66', '1010905', 'Quốc Tử Giám', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('67', '1010907', 'Văn Chương', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('68', '1010909', 'Hàng Bột', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('69', '1010911', 'Ô Chợ Dừa', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('70', '1010913', 'Nam Đồng', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('71', '1010915', 'Quang Trung', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('72', '1010917', 'Trung Liệt', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('73', '1010919', 'Thổ Quan', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('74', '1010921', 'Khâm Thiên', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('75', '1010923', 'Trung Phụng', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('76', '1010925', 'Phương Liên', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('77', '1010927', 'Kim Liên', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('78', '1010929', 'Phương Mai', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('79', '1010931', 'Trung Tự', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('80', '1010933', 'Khương Thượng', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('81', '1010935', 'Thịnh Quang', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('82', '1010937', 'Ngã Tư Sở', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('83', '1010939', 'Láng Hạ', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('84', '1010941', 'Láng Thượng', '', '5', '0');
INSERT INTO `dm_xa` VALUES ('85', '1011101', 'Nhân Chính', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('86', '1011103', 'Khương Trung', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('87', '1011105', 'Khương Mai', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('88', '1011107', 'Phương Liệt', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('89', '1011109', 'Thượng Đình', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('90', '1011111', 'Thanh Xuân Trung', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('91', '1011113', 'Khương Đình', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('92', '1011115', 'Hạ Đình', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('93', '1011117', 'Thanh Xuân Bắc', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('94', '1011119', 'Thanh Xuân Nam', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('95', '1011121', 'Kim Giang', '', '6', '0');
INSERT INTO `dm_xa` VALUES ('96', '1011301', 'Nghĩa Đô', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('97', '1011303', 'Nghĩa Tân', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('98', '1011305', 'Quan Hoa', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('99', '1011307', 'Mai Dịch', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('100', '1011309', 'Dịch Vọng', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('101', '1011311', 'Yên Hoà', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('102', '1011313', 'Trung Hoà', '', '7', '0');
INSERT INTO `dm_xa` VALUES ('103', '1011501', 'Thị trấn Sóc Sơn', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('104', '1011503', 'Tân Dân', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('105', '1011505', 'Thanh Xuân', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('106', '1011507', 'Minh Trí', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('107', '1011509', 'Minh Phú', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('108', '1011511', 'Hiền Ninh', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('109', '1011513', 'Quang Tiến', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('110', '1011515', 'Phú Cường', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('111', '1011517', 'Phú Minh', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('112', '1011519', 'Mai Đình', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('113', '1011521', 'Phù Lỗ', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('114', '1011523', 'Đông Xuân', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('115', '1011525', 'Nam Sơn', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('116', '1011527', 'Bắc Sơn', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('117', '1011529', 'Hồng Kỳ', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('118', '1011531', 'Trung Giã', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('119', '1011533', 'Tân Hưng', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('120', '1011535', 'Bắc Phú', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('121', '1011537', 'Việt Long', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('122', '1011539', 'Xuân Giang', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('123', '1011541', 'Đức Hoà', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('124', '1011543', 'Xuân Thu', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('125', '1011545', 'Kim Lũ', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('126', '1011547', 'Phù Linh', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('127', '1011549', 'Tân Minh', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('128', '1011551', 'Tiên Dược', '', '8', '0');
INSERT INTO `dm_xa` VALUES ('129', '1011701', 'Thị trấn Đông Anh', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('130', '1011703', 'Xuân Nộn', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('131', '1011705', 'Nguyên Khê', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('132', '1011707', 'Uy Nỗ', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('133', '1011709', 'Cổ Loa', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('134', '1011711', 'Tiên Dương', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('135', '1011713', 'Nam Hồng', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('136', '1011715', 'Bắc Hồng', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('137', '1011717', 'Vân Nội', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('138', '1011719', 'Kim Nỗ', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('139', '1011721', 'Kim Chung', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('140', '1011723', 'Đại Mạch', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('141', '1011725', 'Võng La', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('142', '1011727', 'Hải Bối', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('143', '1011729', 'Liên Hà', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('144', '1011731', 'Vân Hà', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('145', '1011733', 'Dục Tú', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('146', '1011735', 'Thuỵ Lâm', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('147', '1011737', 'Việt Hùng', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('148', '1011739', 'Mai Lâm', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('149', '1011741', 'Đông Hội', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('150', '1011743', 'Xuân Canh', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('151', '1011745', 'Tầm Xá', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('152', '1011747', 'Vĩnh Ngọc', '', '9', '0');
INSERT INTO `dm_xa` VALUES ('153', '1011901', 'Thị trấn Gia Lâm', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('154', '1011903', 'Thị trấn Đức Giang', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('155', '1011905', 'Thị trấn Yên Viên', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('156', '1011907', 'Thị trấn Sài Đồng', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('157', '1011909', 'Thạch Bàn', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('158', '1011911', 'Bát Tràng', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('159', '1011913', 'Lệ Chi', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('160', '1011915', 'Đình Xuyên', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('161', '1011917', 'Ninh Hiệp', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('162', '1011919', 'Phù Đổng', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('163', '1011921', 'Trung Màu', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('164', '1011923', 'Dương Hà', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('165', '1011925', 'Yên Thường', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('166', '1011927', 'Yên Viên', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('167', '1011929', 'Giang Biên', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('168', '1011931', 'Thượng Thanh', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('169', '1011933', 'Kim Lan', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('170', '1011935', 'Việt Hưng', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('171', '1011937', 'Ngọc Thuỵ', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('172', '1011939', 'Gia Thuỵ', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('173', '1011941', 'Bồ Đề', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('174', '1011943', 'Long Biên', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('175', '1011945', 'Hội Xá', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('176', '1011947', 'Cổ Bi', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('177', '1011949', 'Trâu Quỳ', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('178', '1011951', 'Đa Tốn', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('179', '1011953', 'Dương Xá', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('180', '1011955', 'Kiêu Kỵ', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('181', '1011957', 'Văn Đức', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('182', '1011959', 'Đông Dư', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('183', '1011961', 'Cự Khối', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('184', '1011963', 'Dương Quang', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('185', '1011965', 'Phú Thị', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('186', '1011967', 'Đặng Xá', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('187', '1011969', 'Kim Sơn', '', '10', '0');
INSERT INTO `dm_xa` VALUES ('188', '1012101', 'Thị trấn Cầu Diễn', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('189', '1012103', 'Mỹ Đình', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('190', '1012105', 'Tây Tựu', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('191', '1012107', 'Phú Diễn', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('192', '1012109', 'Minh Khai', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('193', '1012111', 'Thượng Cát', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('194', '1012113', 'Liên Mạc', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('195', '1012115', 'Thuỵ Phương', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('196', '1012117', 'Đông Ngạc', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('197', '1012119', 'Xuân Đỉnh', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('198', '1012121', 'Cổ Nhuế', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('199', '1012123', 'Trung Văn', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('200', '1012125', 'Mễ Trì', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('201', '1012127', 'Tây Mỗ', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('202', '1012129', 'Đại Mỗ', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('203', '1012131', 'Xuân Phương', '', '11', '0');
INSERT INTO `dm_xa` VALUES ('204', '1012301', 'Thị trấn Văn Điển', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('205', '1012303', 'Định Công', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('206', '1012305', 'Vĩnh Tuy', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('207', '1012307', 'Thanh Trì', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('208', '1012309', 'Trần Phú', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('209', '1012311', 'Yên Sở', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('210', '1012313', 'Ngũ Hiệp', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('211', '1012315', 'Đông Mỹ', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('212', '1012317', 'Yên Mỹ', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('213', '1012319', 'Duyên Hà', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('214', '1012321', 'Vạn Phúc', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('215', '1012323', 'Tứ Hiệp', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('216', '1012325', 'Thịnh Liệt', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('217', '1012327', 'Thanh Liệt', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('218', '1012329', 'Đại Kim', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('219', '1012331', 'Lĩnh Nam', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('220', '1012333', 'Tam Hiệp', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('221', '1012335', 'Tân Triều', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('222', '1012337', 'Hoàng Liệt', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('223', '1012339', 'Vĩnh Quỳnh', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('224', '1012341', 'Liên Ninh', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('225', '1012343', 'Ngọc Hồi', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('226', '1012345', 'Đại áng', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('227', '1012347', 'Hữu Hoà', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('228', '1012349', 'Tả Thanh Oai', '', '12', '0');
INSERT INTO `dm_xa` VALUES ('229', '1030101', 'Quán Toan', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('230', '1030103', 'Hùng Vương', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('231', '1030105', 'Sở Dầu', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('232', '1030107', 'Thượng Lý', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('233', '1030109', 'Trại Chuối', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('234', '1030111', 'Hạ Lý', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('235', '1030113', 'Minh Khai', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('236', '1030115', 'Quang Trung', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('237', '1030117', 'Hoàng Văn Thụ', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('238', '1030119', 'Phan Bội Châu', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('239', '1030121', 'Phạm Hồng Thái', '', '13', '0');
INSERT INTO `dm_xa` VALUES ('240', '1030301', 'Máy Tơ', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('241', '1030303', 'Máy Chai', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('242', '1030305', 'Vạn Mỹ', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('243', '1030307', 'Lạc Viên', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('244', '1030309', 'Cầu Tre', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('245', '1030311', 'Lương Khánh Thiện', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('246', '1030313', 'Gia Viên', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('247', '1030315', 'Cầu Đất', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('248', '1030317', 'Lê Lợi', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('249', '1030319', 'Lạch Tray', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('250', '1030321', 'Đằng Giang', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('251', '1030323', 'Đông Khê', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('252', '1030325', 'Đổng Quốc Bình', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('253', '1030327', 'Cát Bi', '', '14', '0');
INSERT INTO `dm_xa` VALUES ('254', '1030501', 'Cát Dài', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('255', '1030503', 'An Biên', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('256', '1030505', 'Mê Linh', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('257', '1030507', 'Lam Sơn', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('258', '1030509', 'An Dương', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('259', '1030511', 'Trần Nguyên Hãn', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('260', '1030513', 'Hồ Nam', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('261', '1030515', 'Trại Cau', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('262', '1030517', 'Dư Hàng', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('263', '1030519', 'Hàng Kênh', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('264', '1030521', 'Đông Hải', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('265', '1030523', 'Niệm Nghĩa', '', '15', '0');
INSERT INTO `dm_xa` VALUES ('266', '1030701', 'Quán Trữ', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('267', '1030703', 'Đồng Hoà', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('268', '1030705', 'Bắc Sơn', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('269', '1030707', 'Nam Sơn', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('270', '1030709', 'Ngọc Sơn', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('271', '1030711', 'Trần Thành Ngọ', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('272', '1030713', 'Văn Đẩu', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('273', '1030715', 'Phù Liễn', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('274', '1030717', 'Tràng Minh', '', '16', '0');
INSERT INTO `dm_xa` VALUES ('275', '1030901', 'Ngọc Xuyên', '', '17', '0');
INSERT INTO `dm_xa` VALUES ('276', '1030903', 'Ngọc Hải', '', '17', '0');
INSERT INTO `dm_xa` VALUES ('277', '1030905', 'Vạn Hương', '', '17', '0');
INSERT INTO `dm_xa` VALUES ('278', '1030907', 'Vạn Sơn', '', '17', '0');
INSERT INTO `dm_xa` VALUES ('279', '1030909', 'Bàng La', '', '17', '0');
INSERT INTO `dm_xa` VALUES ('280', '1031101', 'Thị trấn Núi Đèo', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('281', '1031103', 'Thị trấn Minh Đức', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('282', '1031105', 'Lại Xuân', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('283', '1031107', 'An Sơn', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('284', '1031109', 'Kỳ Sơn', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('285', '1031111', 'Liên Khê', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('286', '1031113', 'Lưu Kiếm', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('287', '1031115', 'Gia Minh', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('288', '1031117', 'Gia Đức', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('289', '1031119', 'Minh Tân', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('290', '1031121', 'Phù Ninh', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('291', '1031123', 'Quảng Thanh', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('292', '1031125', 'Chính Mỹ', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('293', '1031127', 'Kênh Giang', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('294', '1031129', 'Hợp Thành', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('295', '1031131', 'Cao Nhân', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('296', '1031133', 'Mỹ Đồng', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('297', '1031135', 'Đông Sơn', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('298', '1031137', 'Hoà Bình', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('299', '1031139', 'Trung Hà', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('300', '1031141', 'An Lư', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('301', '1031143', 'Thuỷ Triều', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('302', '1031145', 'Ngũ Lão', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('303', '1031147', 'Phục Lễ', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('304', '1031149', 'Tam Hưng', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('305', '1031151', 'Phả Lễ', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('306', '1031153', 'Lập Lễ', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('307', '1031155', 'Kiền Bái', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('308', '1031157', 'Thiên Hương', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('309', '1031159', 'Thuỷ Sơn', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('310', '1031161', 'Thuỷ Đường', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('311', '1031163', 'Hoàng Động', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('312', '1031165', 'Lâm Động', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('313', '1031167', 'Hoa Động', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('314', '1031169', 'Tân Dương', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('315', '1031171', 'Dương Quan', '', '18', '0');
INSERT INTO `dm_xa` VALUES ('316', '1031301', 'Thị trấn An Dương', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('317', '1031303', 'Lê Thiện', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('318', '1031305', 'Đại Bản', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('319', '1031307', 'An Hoà', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('320', '1031309', 'Hồng Phong', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('321', '1031311', 'Tân Tiến', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('322', '1031313', 'An Hưng', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('323', '1031315', 'An Hồng', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('324', '1031317', 'Bắc Sơn', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('325', '1031319', 'Nam Sơn', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('326', '1031321', 'Lê Lợi', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('327', '1031323', 'Đặng Cương', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('328', '1031325', 'Đồng Thái', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('329', '1031327', 'Quốc Tuấn', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('330', '1031329', 'An Đồng', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('331', '1031331', 'Hồng Thái', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('332', '1031333', 'Dư Hàng Kênh', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('333', '1031335', 'Vĩnh Niệm', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('334', '1031337', 'Đông Hải', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('335', '1031339', 'Đằng Lâm', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('336', '1031341', 'Đằng Hải', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('337', '1031343', 'Nam Hải', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('338', '1031345', 'Tràng Cát', '', '19', '0');
INSERT INTO `dm_xa` VALUES ('339', '1031501', 'Thị trấn An Lão', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('340', '1031503', 'Bát Trang', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('341', '1031505', 'Trường Thọ', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('342', '1031507', 'Trường Thành', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('343', '1031509', 'An Tiến', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('344', '1031511', 'Quang Hưng', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('345', '1031513', 'Quang Trung', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('346', '1031515', 'Quốc Tuấn', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('347', '1031517', 'An Thắng', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('348', '1031519', 'Trường Sơn', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('349', '1031521', 'Tân Dân', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('350', '1031523', 'Thái Sơn', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('351', '1031525', 'Tân Viên', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('352', '1031527', 'Mỹ Đức', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('353', '1031529', 'Chiến Thắng', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('354', '1031531', 'An Thọ', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('355', '1031533', 'An Thái', '', '20', '0');
INSERT INTO `dm_xa` VALUES ('356', '1031701', 'Thị trấn Núi Đối', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('357', '1031703', 'Đa Phúc', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('358', '1031705', 'Hưng Đạo', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('359', '1031707', 'Anh Dũng', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('360', '1031709', 'Hải Thành', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('361', '1031711', 'Đông Phương', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('362', '1031713', 'Thuận Thiên', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('363', '1031715', 'Hữu Bằng', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('364', '1031717', 'Đại Đồng', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('365', '1031719', 'Hoà Nghĩa', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('366', '1031721', 'Ngũ Phúc', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('367', '1031723', 'Kiến Quốc', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('368', '1031725', 'Thuỵ Hương', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('369', '1031727', 'Thanh Sơn', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('370', '1031729', 'Minh Tân', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('371', '1031731', 'Đại Hà', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('372', '1031733', 'Ngũ Đoan', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('373', '1031735', 'Tân Phong', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('374', '1031737', 'Hợp Đức', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('375', '1031739', 'Tân Thành', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('376', '1031741', 'Tân Trào', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('377', '1031743', 'Đoàn Xá', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('378', '1031745', 'Tú Sơn', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('379', '1031747', 'Đại Hợp', '', '21', '0');
INSERT INTO `dm_xa` VALUES ('380', '1031901', 'Thị trấn Tiên Lãng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('381', '1031903', 'Đại Thắng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('382', '1031905', 'Tiên Cường', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('383', '1031907', 'Tự Cường', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('384', '1031909', 'Tiên Tiến', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('385', '1031911', 'Quyết Tiến', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('386', '1031913', 'Khởi Nghĩa', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('387', '1031915', 'Tiên Thanh', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('388', '1031917', 'Cấp Tiến', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('389', '1031919', 'Kiến Thiết', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('390', '1031921', 'Đoàn Lập', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('391', '1031923', 'Bạch Đằng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('392', '1031925', 'Quang Phục', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('393', '1031927', 'Toàn Thắng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('394', '1031929', 'Tiên Thắng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('395', '1031931', 'Tiên Minh', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('396', '1031933', 'Bắc Hưng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('397', '1031935', 'Nam Hưng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('398', '1031937', 'Hùng Thắng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('399', '1031939', 'Tây Hưng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('400', '1031941', 'Đông Hưng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('401', '1031943', 'Tiên Hưng', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('402', '1031945', 'Vinh Quang', '', '22', '0');
INSERT INTO `dm_xa` VALUES ('403', '1032101', 'Thị trấn Vĩnh Bảo', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('404', '1032103', 'Dũng Tiến', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('405', '1032105', 'Giang Biên', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('406', '1032107', 'Thắng Thuỷ', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('407', '1032109', 'Trung Lập', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('408', '1032111', 'Việt Tiến', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('409', '1032113', 'Vĩnh An', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('410', '1032115', 'Vĩnh Long', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('411', '1032117', 'Hiệp Hoà', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('412', '1032119', 'Hùng Tiến', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('413', '1032121', 'An Hoà', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('414', '1032123', 'Tân Hưng', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('415', '1032125', 'Tân Liên', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('416', '1032127', 'Nhân Hoà', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('417', '1032129', 'Tam Đa', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('418', '1032131', 'Hưng Nhân', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('419', '1032133', 'Vinh Quang', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('420', '1032135', 'Đồng Minh', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('421', '1032137', 'Thanh Lương', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('422', '1032139', 'Liên Am', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('423', '1032141', 'Lý Học', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('424', '1032143', 'Tam Cường', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('425', '1032145', 'Hoà Bình', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('426', '1032147', 'Tiền Phong', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('427', '1032149', 'Vĩnh Phong', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('428', '1032151', 'Cộng Hiền', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('429', '1032153', 'Cao Minh', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('430', '1032155', 'Cổ Am', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('431', '1032157', 'Vĩnh Tiến', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('432', '1032159', 'Trấn Dương', '', '23', '0');
INSERT INTO `dm_xa` VALUES ('433', '1032301', 'Thị trấn Cát Bà', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('434', '1032303', 'Thị trấn Cát Hải', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('435', '1032305', 'Nghĩa Lộ', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('436', '1032307', 'Đồng Bài', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('437', '1032309', 'Hoàng Châu', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('438', '1032311', 'Văn Phong', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('439', '1032313', 'Phù Long', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('440', '1032315', 'Gia Luận', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('441', '1032317', 'Hiền Hào', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('442', '1032319', 'Trân Châu', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('443', '1032321', 'Việt Hải', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('444', '1032323', 'Xuân Đám', '', '24', '0');
INSERT INTO `dm_xa` VALUES ('445', '1040101', 'Tích Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('446', '1040103', 'Liên Bảo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('447', '1040105', 'Đống Đa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('448', '1040107', 'Ngô Quyền', '', null, '0');
INSERT INTO `dm_xa` VALUES ('449', '1040109', 'Thị trấn Tam Đảo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('450', '1040111', 'Định Trung', '', null, '0');
INSERT INTO `dm_xa` VALUES ('451', '1040113', 'Khai Quang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('452', '1040301', 'Thị trấn Lập Thạch', '', null, '0');
INSERT INTO `dm_xa` VALUES ('453', '1040303', 'Đạo Trù', '', null, '0');
INSERT INTO `dm_xa` VALUES ('454', '1040305', 'Yên Dương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('455', '1040307', 'Quang Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('456', '1040309', 'Ngọc Mỹ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('457', '1040311', 'Hợp Lý', '', null, '0');
INSERT INTO `dm_xa` VALUES ('458', '1040313', 'Lãng Công', '', null, '0');
INSERT INTO `dm_xa` VALUES ('459', '1040315', 'Quang Yên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('460', '1040317', 'Bạch Lưu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('461', '1040319', 'Hải Lựu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('462', '1040321', 'Bồ Lý', '', null, '0');
INSERT INTO `dm_xa` VALUES ('463', '1040323', 'Bắc Bình', '', null, '0');
INSERT INTO `dm_xa` VALUES ('464', '1040325', 'Thái Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('465', '1040327', 'Liễn Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('466', '1040329', 'Xuân Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('467', '1040331', 'Vân Trục', '', null, '0');
INSERT INTO `dm_xa` VALUES ('468', '1040333', 'Đồng Quế', '', null, '0');
INSERT INTO `dm_xa` VALUES ('469', '1040335', 'Nhân Đạo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('470', '1040337', 'Đôn Nhân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('471', '1040339', 'Phương Khoan', '', null, '0');
INSERT INTO `dm_xa` VALUES ('472', '1040341', 'Liên Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('473', '1040343', 'Tử Du', '', null, '0');
INSERT INTO `dm_xa` VALUES ('474', '1040345', 'Tân Lập', '', null, '0');
INSERT INTO `dm_xa` VALUES ('475', '1040347', 'Nhạo Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('476', '1040349', 'Tam Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('477', '1040351', 'Như Thụy', '', null, '0');
INSERT INTO `dm_xa` VALUES ('478', '1040353', 'Yên Thạch', '', null, '0');
INSERT INTO `dm_xa` VALUES ('479', '1040355', 'Bàn Giản', '', null, '0');
INSERT INTO `dm_xa` VALUES ('480', '1040357', 'Xuân Lôi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('481', '1040359', 'Đồng ích', '', null, '0');
INSERT INTO `dm_xa` VALUES ('482', '1040361', 'Tiên Lữ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('483', '1040363', 'Văn Quán', '', null, '0');
INSERT INTO `dm_xa` VALUES ('484', '1040365', 'Đồng Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('485', '1040367', 'Tứ Yên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('486', '1040369', 'Đức Bác', '', null, '0');
INSERT INTO `dm_xa` VALUES ('487', '1040371', 'Đình Chu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('488', '1040373', 'Cao Phong', '', null, '0');
INSERT INTO `dm_xa` VALUES ('489', '1040375', 'Triệu Đề', '', null, '0');
INSERT INTO `dm_xa` VALUES ('490', '1040377', 'Sơn Đông', '', null, '0');
INSERT INTO `dm_xa` VALUES ('491', '1040501', 'Thị trấn Tam Dương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('492', '1040503', 'Thị trấn Hương Canh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('493', '1040505', 'Đại Đình', '', null, '0');
INSERT INTO `dm_xa` VALUES ('494', '1040507', 'Tam Quan', '', null, '0');
INSERT INTO `dm_xa` VALUES ('495', '1040509', 'Trung Mỹ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('496', '1040511', 'Minh Quang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('497', '1040513', 'Hồ Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('498', '1040515', 'Hợp Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('499', '1040517', 'Hoàng Hoa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('500', '1040519', 'Đồng Tĩnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('501', '1040521', 'Hợp Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('502', '1040523', 'Kim Long', '', null, '0');
INSERT INTO `dm_xa` VALUES ('503', '1040525', 'Hướng Đạo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('504', '1040527', 'Đạo Tú', '', null, '0');
INSERT INTO `dm_xa` VALUES ('505', '1040529', 'An Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('506', '1040531', 'Gia Khánh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('507', '1040533', 'Bá Hiến', '', null, '0');
INSERT INTO `dm_xa` VALUES ('508', '1040535', 'Thiện Kế', '', null, '0');
INSERT INTO `dm_xa` VALUES ('509', '1040537', 'Hương Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('510', '1040539', 'Thanh Vân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('511', '1040541', 'Duy Phiên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('512', '1040543', 'Hoàng Đan', '', null, '0');
INSERT INTO `dm_xa` VALUES ('513', '1040545', 'Hoàng Lâu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('514', '1040547', 'Vân Hội', '', null, '0');
INSERT INTO `dm_xa` VALUES ('515', '1040549', 'Hợp Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('516', '1040551', 'Tam Hợp', '', null, '0');
INSERT INTO `dm_xa` VALUES ('517', '1040553', 'Quất Lưu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('518', '1040555', 'Sơn Lôi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('519', '1040557', 'Đạo Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('520', '1040559', 'Tân Phong', '', null, '0');
INSERT INTO `dm_xa` VALUES ('521', '1040561', 'Thanh Lãng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('522', '1040563', 'Phú Xuân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('523', '1040701', 'Thị trấn Vĩnh Tường', '', null, '0');
INSERT INTO `dm_xa` VALUES ('524', '1040703', 'Kim Xá', '', null, '0');
INSERT INTO `dm_xa` VALUES ('525', '1040705', 'Yên Bình', '', null, '0');
INSERT INTO `dm_xa` VALUES ('526', '1040707', 'Chấn Hưng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('527', '1040709', 'Nghĩa Hưng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('528', '1040711', 'Yên Lập', '', null, '0');
INSERT INTO `dm_xa` VALUES ('529', '1040713', 'Việt Xuân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('530', '1040715', 'Bồ Sao', '', null, '0');
INSERT INTO `dm_xa` VALUES ('531', '1040717', 'Đại Đồng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('532', '1040719', 'Tân Tiến', '', null, '0');
INSERT INTO `dm_xa` VALUES ('533', '1040721', 'Lũng Hoà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('534', '1040723', 'Cao Đại', '', null, '0');
INSERT INTO `dm_xa` VALUES ('535', '1040725', 'Thổ Tang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('536', '1040727', 'Vĩnh Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('537', '1040729', 'Bình Dương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('538', '1040731', 'Tân Cương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('539', '1040733', 'Phú Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('540', '1040735', 'Thượng Trưng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('541', '1040737', 'Vũ Di', '', null, '0');
INSERT INTO `dm_xa` VALUES ('542', '1040739', 'Lý Nhân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('543', '1040741', 'Tuân Chính', '', null, '0');
INSERT INTO `dm_xa` VALUES ('544', '1040743', 'Vân Xuân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('545', '1040745', 'Tam Phúc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('546', '1040747', 'Tứ Trưng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('547', '1040749', 'Ngũ Kiên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('548', '1040751', 'An Tường', '', null, '0');
INSERT INTO `dm_xa` VALUES ('549', '1040753', 'Vĩnh Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('550', '1040755', 'Phú Đa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('551', '1040757', 'Vĩnh Ninh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('552', '1040901', 'Thị trấn Yên Lạc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('553', '1040903', 'Đồng Cương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('554', '1040905', 'Đồng Văn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('555', '1040907', 'Bình Định', '', null, '0');
INSERT INTO `dm_xa` VALUES ('556', '1040909', 'Trung Nguyên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('557', '1040911', 'Tề Lỗ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('558', '1040913', 'Tam Hồng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('559', '1040915', 'Yên Đồng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('560', '1040917', 'Văn Tiến', '', null, '0');
INSERT INTO `dm_xa` VALUES ('561', '1040919', 'Nguyệt Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('562', '1040921', 'Yên Phương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('563', '1040923', 'Hồng Phương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('564', '1040925', 'Trung Kiên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('565', '1040927', 'Liên Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('566', '1040929', 'Đại Tự', '', null, '0');
INSERT INTO `dm_xa` VALUES ('567', '1040931', 'Hồng Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('568', '1040933', 'Trung Hà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('569', '1041101', 'Thị trấn Phúc Yên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('570', '1041103', 'Thị trấn Xuân Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('571', '1041105', 'Ngọc Thanh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('572', '1041107', 'Cao Minh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('573', '1041109', 'Nam Viêm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('574', '1041111', 'Tiền Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('575', '1041113', 'Phúc Thắng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('576', '1041115', 'Kim Hoa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('577', '1041117', 'Thạch Đà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('578', '1041119', 'Tiến Thắng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('579', '1041121', 'Tự Lập', '', null, '0');
INSERT INTO `dm_xa` VALUES ('580', '1041123', 'Quang Minh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('581', '1041125', 'Thanh Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('582', '1041127', 'Tam Đồng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('583', '1041129', 'Liên Mạc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('584', '1041131', 'Vạn Yên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('585', '1041133', 'Đại Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('586', '1041135', 'Chu Phan', '', null, '0');
INSERT INTO `dm_xa` VALUES ('587', '1041137', 'Tiến Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('588', '1041139', 'Mê Linh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('589', '1041141', 'Văn Khê', '', null, '0');
INSERT INTO `dm_xa` VALUES ('590', '1041143', 'Hoàng Kim', '', null, '0');
INSERT INTO `dm_xa` VALUES ('591', '1041145', 'Tiền Phong', '', null, '0');
INSERT INTO `dm_xa` VALUES ('592', '1041147', 'Tráng Việt', '', null, '0');
INSERT INTO `dm_xa` VALUES ('593', '1050101', 'Nguyễn Trãi', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('594', '1050103', 'Văn Mỗ', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('595', '1050105', 'Yết Kiêu', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('596', '1050107', 'Phúc La', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('597', '1050109', 'Quang Trung', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('598', '1050111', 'Vạn Phúc', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('599', '1050113', 'Hà Cầu', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('600', '1050115', 'Văn Khê', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('601', '1050117', 'Kiến Hưng', '', '26', '0');
INSERT INTO `dm_xa` VALUES ('602', '1050301', 'Lê Lợi', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('603', '1050303', 'Ngô Quyền', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('604', '1050305', 'Quang Trung', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('605', '1050307', 'Sơn Lộc', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('606', '1050309', 'Xuân Khanh', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('607', '1050311', 'Xuân Sơn', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('608', '1050313', 'Kim Sơn', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('609', '1050315', 'Đường Lâm', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('610', '1050317', 'Thanh Mỹ', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('611', '1050319', 'Trung Sơn Trầm', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('612', '1050321', 'Sơn Đông', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('613', '1050323', 'Cổ Đông', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('614', '1050325', 'Trung Hưng', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('615', '1050327', 'Viên Sơn', '', '27', '0');
INSERT INTO `dm_xa` VALUES ('616', '1050501', 'Thị trấn Tây Đằng', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('617', '1050503', 'Thuần Mỹ', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('618', '1050505', 'Sơn Đà', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('619', '1050507', 'Tòng Bạt', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('620', '1050509', 'Phong Vân', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('621', '1050511', 'Cổ Đô', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('622', '1050513', 'Tân Đức', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('623', '1050515', 'Phú Cường', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('624', '1050517', 'Tản Hồng', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('625', '1050519', 'Châu Sơn', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('626', '1050521', 'Phú Phương', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('627', '1050523', 'Phú Châu', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('628', '1050525', 'Minh Châu', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('629', '1050527', 'Chu Minh', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('630', '1050529', 'Đông Quang', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('631', '1050531', 'Thái Hòa', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('632', '1050533', 'Phú Sơn', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('633', '1050535', 'Phú Đông', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('634', '1050537', 'Vạn Thắng', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('635', '1050539', 'Đồng Thái', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('636', '1050541', 'Vật Lại', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('637', '1050543', 'Cẩm Lĩnh', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('638', '1050545', 'Thụy An', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('639', '1050547', 'Tiên Phong', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('640', '1050549', 'Cam Thượng', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('641', '1050551', 'Ba Vì', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('642', '1050553', 'Khánh Thượng', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('643', '1050555', 'Minh Quang', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('644', '1050557', 'Ba Trại', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('645', '1050559', 'Tản Lĩnh', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('646', '1050561', 'Vân Hòa', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('647', '1050563', 'Yên Bài', '', '28', '0');
INSERT INTO `dm_xa` VALUES ('648', '1050701', 'Thị trấn Phúc Thọ', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('649', '1050703', 'Vân Hà', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('650', '1050705', 'Vân Nam', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('651', '1050707', 'Vân Phúc', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('652', '1050709', 'Xuân Phú', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('653', '1050711', 'Cẩm Đình', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('654', '1050713', 'Phương Độ', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('655', '1050715', 'Sen Chiểu', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('656', '1050717', 'Võng Xuyên', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('657', '1050719', 'Long Xuyên', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('658', '1050721', 'Thượng Cốc', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('659', '1050723', 'Hát Môn', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('660', '1050725', 'Thọ Lộc', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('661', '1050727', 'Tích Giang', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('662', '1050729', 'Phúc Hòa', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('663', '1050731', 'Ngọc Tảo', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('664', '1050733', 'Thanh Đa', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('665', '1050735', 'Trạch Mỹ Lộc', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('666', '1050737', 'Tam Thuấn', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('667', '1050739', 'Phụng Thượng', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('668', '1050741', 'Tam Hiệp', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('669', '1050743', 'Hiệp Thuận', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('670', '1050745', 'Liên Hiệp', '', '29', '0');
INSERT INTO `dm_xa` VALUES ('671', '1050901', 'Thị trấn Phùng', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('672', '1050903', 'Trung Châu', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('673', '1050905', 'Thọ An', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('674', '1050907', 'Thọ Xuân', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('675', '1050909', 'Hồng Hà', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('676', '1050911', 'Liên Hồng', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('677', '1050913', 'Liên Hà', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('678', '1050915', 'Hạ Mỗ', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('679', '1050917', 'Liên Trung', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('680', '1050919', 'Phương Đình', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('681', '1050921', 'Thượng Mỗ', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('682', '1050923', 'Đan Phượng', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('683', '1050925', 'Tân Hội', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('684', '1050927', 'Tân Lập', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('685', '1050929', 'Đồng Tháp', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('686', '1050931', 'Song Phượng', '', '30', '0');
INSERT INTO `dm_xa` VALUES ('687', '1051101', 'Thị trấn Liên Quan', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('688', '1051103', 'Đại Đồng', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('689', '1051105', 'Cẩm Yên', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('690', '1051107', 'Lại Thượng', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('691', '1051109', 'Phú Kim', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('692', '1051111', 'Hương Ngải', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('693', '1051113', 'Canh Nậu', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('694', '1051115', 'Dị Nậu', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('695', '1051117', 'Bình Yên', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('696', '1051119', 'Kim Quan', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('697', '1051121', 'Chàng Sơn', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('698', '1051123', 'Thạch Xá', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('699', '1051125', 'Hữu Bằng', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('700', '1051127', 'Phùng Xá', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('701', '1051129', 'Tân Xã', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('702', '1051131', 'Cần Kiệm', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('703', '1051133', 'Bình Phú', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('704', '1051135', 'Hạ Bằng', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('705', '1051137', 'Đồng Trúc', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('706', '1051139', 'Thạch Hoà', '', '31', '0');
INSERT INTO `dm_xa` VALUES ('707', '1051301', 'Thị trấn Trạm Trôi', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('708', '1051303', 'Đức Thượng', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('709', '1051305', 'Minh Khai', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('710', '1051307', 'Dương Liễu', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('711', '1051309', 'Đức Giang', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('712', '1051311', 'Kim Chung', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('713', '1051313', 'Di Trạch', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('714', '1051315', 'Cát Quế', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('715', '1051317', 'Sơn Đồng', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('716', '1051319', 'Yên Sở', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('717', '1051321', 'Đắc Sở', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('718', '1051323', 'Vân Canh', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('719', '1051325', 'Tiền Yên', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('720', '1051327', 'Song Phương', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('721', '1051329', 'Lại Yên', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('722', '1051331', 'An Khánh', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('723', '1051333', 'Vân Côn', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('724', '1051335', 'An Thượng', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('725', '1051337', 'Dương Nội', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('726', '1051339', 'La Phù', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('727', '1051341', 'Đông La', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('728', '1051343', 'Yên Nghĩa', '', '32', '0');
INSERT INTO `dm_xa` VALUES ('729', '1051501', 'Thị trấn Quốc Oai', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('730', '1051503', 'Phú Mãn', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('731', '1051505', 'Phú Cát', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('732', '1051507', 'Hòa Thạch', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('733', '1051509', 'Tuyết Nghĩa', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('734', '1051511', 'Đông Yên', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('735', '1051513', 'Liệp Tuyết', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('736', '1051515', 'Ngọc Liệp', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('737', '1051517', 'Ngọc Mỹ', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('738', '1051519', 'Cấn Hữu', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('739', '1051521', 'Nghĩa Hương', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('740', '1051523', 'Thạch Thán', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('741', '1051525', 'Đồng Quang', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('742', '1051527', 'Sài Sơn', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('743', '1051529', 'Yên Sơn', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('744', '1051531', 'Phượng Cách', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('745', '1051533', 'Tân Phú', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('746', '1051535', 'Đại Thành', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('747', '1051537', 'Tân Hòa', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('748', '1051539', 'Cộng Hòa', '', '33', '0');
INSERT INTO `dm_xa` VALUES ('749', '1051701', 'Thị trấn Chúc Sơn', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('750', '1051703', 'Thị trấn Xuân Mai', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('751', '1051705', 'Phụng Châu', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('752', '1051707', 'Đông Sơn', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('753', '1051709', 'Đông Phương Yên', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('754', '1051711', 'Phú Nghĩa', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('755', '1051713', 'Tiên Phương', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('756', '1051715', 'Ngọc Sơn', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('757', '1051717', 'Ngọc Hòa', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('758', '1051719', 'Trường Yên', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('759', '1051721', 'Thủy Xuân Tiên', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('760', '1051723', 'Thanh Bình', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('761', '1051725', 'Trung Hòa', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('762', '1051727', 'Thụy Hương', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('763', '1051729', 'Đại Yên', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('764', '1051731', 'Tân Tiến', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('765', '1051733', 'Nam Phương Tiến', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('766', '1051735', 'Lam Điền', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('767', '1051737', 'Tốt Động', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('768', '1051739', 'Hợp Đồng', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('769', '1051741', 'Hoàng Văn Thụ', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('770', '1051743', 'Hoàng Diệu', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('771', '1051745', 'Hữu Văn', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('772', '1051747', 'Quảng Bị', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('773', '1051749', 'Mỹ Lương', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('774', '1051751', 'Thượng Vực', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('775', '1051753', 'Trần Phú', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('776', '1051755', 'Hồng Phong', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('777', '1051757', 'Đồng Phú', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('778', '1051759', 'Văn Võ', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('779', '1051761', 'Đồng Lạc', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('780', '1051763', 'Hòa Chính', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('781', '1051765', 'Phú Nam An', '', '34', '0');
INSERT INTO `dm_xa` VALUES ('782', '1051901', 'Thị trấn Kim Bài', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('783', '1051903', 'Phú Lãm', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('784', '1051905', 'Phú Lương', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('785', '1051907', 'Biên Giang', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('786', '1051909', 'Đồng Mai', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('787', '1051911', 'Cự Khê', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('788', '1051913', 'Bích Hòa', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('789', '1051915', 'Cao Viên', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('790', '1051917', 'Mỹ Hưng', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('791', '1051919', 'Bình Minh', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('792', '1051921', 'Tam Hưng', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('793', '1051923', 'Thanh Cao', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('794', '1051925', 'Thanh Thùy', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('795', '1051927', 'Thanh Mai', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('796', '1051929', 'Kim An', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('797', '1051931', 'Kim Thư', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('798', '1051933', 'Thanh Văn', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('799', '1051935', 'Đỗ Động', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('800', '1051937', 'Tân Ước', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('801', '1051939', 'Phương Trung', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('802', '1051941', 'Liên Châu', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('803', '1051943', 'Dân Hòa', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('804', '1051945', 'Cao Dương', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('805', '1051947', 'Xuân Dương', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('806', '1051949', 'Hồng Dương', '', '35', '0');
INSERT INTO `dm_xa` VALUES ('807', '1052101', 'Thị trấn Thường Tín', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('808', '1052103', 'Khánh Hà', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('809', '1052105', 'Ninh Sở', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('810', '1052107', 'Duyên Thái', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('811', '1052109', 'Nhị Khê', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('812', '1052111', 'Hòa Bình', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('813', '1052113', 'Văn Bình', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('814', '1052115', 'Vân Tảo', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('815', '1052117', 'Hồng Vân', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('816', '1052119', 'Hiền Giang', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('817', '1052121', 'Liên Phương', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('818', '1052123', 'Văn Phú', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('819', '1052125', 'Tự Nhiên', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('820', '1052127', 'Thư Phú', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('821', '1052129', 'Tiền Phong', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('822', '1052131', 'Hà Hồi', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('823', '1052133', 'Nguyễn Trãi', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('824', '1052135', 'Chương Dương', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('825', '1052137', 'Tân Minh', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('826', '1052139', 'Quất Động', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('827', '1052141', 'Thắng Lợi', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('828', '1052143', 'Lê Lợi', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('829', '1052145', 'Dũng Tiến', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('830', '1052147', 'Nghiêm Xuyên', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('831', '1052149', 'Tô Hiệu', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('832', '1052151', 'Thống Nhất', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('833', '1052153', 'Văn Tự', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('834', '1052155', 'Vạn Điểm', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('835', '1052157', 'Minh Cường', '', '36', '0');
INSERT INTO `dm_xa` VALUES ('836', '1052301', 'Thị trấn Tế Tiêu', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('837', '1052303', 'Đồng Tâm', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('838', '1052305', 'Thượng Lâm', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('839', '1052307', 'Tuy Lai', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('840', '1052309', 'Phúc Lâm', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('841', '1052311', 'Mỹ Thành', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('842', '1052313', 'Bột Xuyên', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('843', '1052315', 'An Mỹ', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('844', '1052317', 'Hồng Sơn', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('845', '1052319', 'Lê Thanh', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('846', '1052321', 'Xuy Xá', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('847', '1052323', 'Phùng Xá', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('848', '1052325', 'Phù Lưu Tế', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('849', '1052327', 'Đại Nghĩa', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('850', '1052329', 'Đại Hưng', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('851', '1052331', 'Vạn Kim', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('852', '1052333', 'Đốc Tín', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('853', '1052335', 'Hương Sơn', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('854', '1052337', 'Hùng Tiến', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('855', '1052339', 'An Tiến', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('856', '1052341', 'Hợp Tiến', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('857', '1052343', 'Hợp Thanh', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('858', '1052345', 'An Phú', '', '37', '0');
INSERT INTO `dm_xa` VALUES ('859', '1052501', 'Thị trấn Vân Đình', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('860', '1052503', 'Viên An', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('861', '1052505', 'Viên Nội', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('862', '1052507', 'Sơn Công', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('863', '1052509', 'Đồng Tiến', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('864', '1052511', 'Vạn Thái', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('865', '1052513', 'Hòa Xá', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('866', '1052515', 'Hòa Nam', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('867', '1052517', 'Hòa Phú', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('868', '1052519', 'Phù Lưu', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('869', '1052521', 'Lưu Hoàng', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('870', '1052523', 'Hồng Quang', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('871', '1052525', 'Cao Thành', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('872', '1052527', 'Tân Phương', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('873', '1052529', 'Hoa Sơn', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('874', '1052531', 'Trường Thịnh', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('875', '1052533', 'Quảng Phú Cầu', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('876', '1052535', 'Liên Bạt', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('877', '1052537', 'Phương Tú', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('878', '1052539', 'Tảo Dương Văn', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('879', '1052541', 'Đội Bình', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('880', '1052543', 'Đại Hùng', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('881', '1052545', 'Đại Cường', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('882', '1052547', 'Đông Lỗ', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('883', '1052549', 'Trung Tú', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('884', '1052551', 'Đồng Tân', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('885', '1052553', 'Minh Đức', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('886', '1052555', 'Kim Đường', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('887', '1052557', 'Hòa Lâm', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('888', '1052559', 'Trầm Lộng', '', '38', '0');
INSERT INTO `dm_xa` VALUES ('889', '1052701', 'Thị trấn Phú Xuyên', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('890', '1052703', 'Thị trấn Phú Minh', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('891', '1052705', 'Hồng Minh', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('892', '1052707', 'Phượng Dực', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('893', '1052709', 'Đại Thắng', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('894', '1052711', 'Tri Trung', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('895', '1052713', 'Văn Hoàng', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('896', '1052715', 'Phú Túc', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('897', '1052717', 'Hoàng Long', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('898', '1052719', 'Quang Trung', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('899', '1052721', 'Nam Triều', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('900', '1052723', 'Tân Dân', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('901', '1052725', 'Sơn Hà', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('902', '1052727', 'Chuyên Mỹ', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('903', '1052729', 'Phúc Tiến', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('904', '1052731', 'Vân Từ', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('905', '1052733', 'Đại Xuyên', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('906', '1052735', 'Phú Yên', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('907', '1052737', 'Châu Can', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('908', '1052739', 'Văn Nhân', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('909', '1052741', 'Thụy Phú', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('910', '1052743', 'Hồng Thái', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('911', '1052745', 'Nam Phong', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('912', '1052747', 'Khai Thái', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('913', '1052749', 'Tri Thủy', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('914', '1052751', 'Bạch Hạ', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('915', '1052753', 'Quang Lãng', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('916', '1052755', 'Minh Tân', '', '39', '0');
INSERT INTO `dm_xa` VALUES ('917', '1060101', 'Ninh xá', '', null, '0');
INSERT INTO `dm_xa` VALUES ('918', '1060103', 'PhườngĐáp Cầu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('919', '1060105', 'PhườngThị Cầu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('920', '1060107', 'PhườngTiền An', '', null, '0');
INSERT INTO `dm_xa` VALUES ('921', '1060109', 'PhườngVệ An', '', null, '0');
INSERT INTO `dm_xa` VALUES ('922', '1060111', 'Vũ Ninh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('923', '1060113', 'Kinh Bắc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('924', '1060115', 'Đại Phúc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('925', '1060117', 'Võ Cường', '', null, '0');
INSERT INTO `dm_xa` VALUES ('926', '1060301', 'Thị trấn Chờ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('927', '1060303', 'Dũng Liệt', '', null, '0');
INSERT INTO `dm_xa` VALUES ('928', '1060305', 'Hoà Tiến', '', null, '0');
INSERT INTO `dm_xa` VALUES ('929', '1060307', 'Tam Giang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('930', '1060309', 'Tam Đa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('931', '1060311', 'Yên Trung', '', null, '0');
INSERT INTO `dm_xa` VALUES ('932', '1060313', 'Đông Tiến', '', null, '0');
INSERT INTO `dm_xa` VALUES ('933', '1060315', 'Thuỵ Hoà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('934', '1060317', 'Hoà Long', '', null, '0');
INSERT INTO `dm_xa` VALUES ('935', '1060319', 'Yên Phụ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('936', '1060321', 'Đông Phong', '', null, '0');
INSERT INTO `dm_xa` VALUES ('937', '1060323', 'Vạn An', '', null, '0');
INSERT INTO `dm_xa` VALUES ('938', '1060325', 'Long Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('939', '1060327', 'Trung Nghĩa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('940', '1060329', 'Khúc Xuyên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('941', '1060331', 'Văn Môn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('942', '1060333', 'Đông Thọ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('943', '1060335', 'Phong Khê', '', null, '0');
INSERT INTO `dm_xa` VALUES ('944', '1060501', 'Thị trấn Phố Mới', '', null, '0');
INSERT INTO `dm_xa` VALUES ('945', '1060503', 'Việt Thống', '', null, '0');
INSERT INTO `dm_xa` VALUES ('946', '1060505', 'Kim Chân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('947', '1060507', 'Đại Xuân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('948', '1060509', 'Nhân Hoà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('949', '1060511', 'Bằng An', '', null, '0');
INSERT INTO `dm_xa` VALUES ('950', '1060513', 'Quế Tân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('951', '1060515', 'Vân Dương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('952', '1060517', 'Phù Lương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('953', '1060519', 'Phương Liễu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('954', '1060521', 'Phượng Mao', '', null, '0');
INSERT INTO `dm_xa` VALUES ('955', '1060523', 'Việt Hùng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('956', '1060525', 'Nam Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('957', '1060527', 'Phù Lãng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('958', '1060529', 'Ngọc Xá', '', null, '0');
INSERT INTO `dm_xa` VALUES ('959', '1060531', 'Châu Phong', '', null, '0');
INSERT INTO `dm_xa` VALUES ('960', '1060533', 'Cách Bi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('961', '1060535', 'Yên Giả', '', null, '0');
INSERT INTO `dm_xa` VALUES ('962', '1060537', 'Đào Viên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('963', '1060539', 'Bồng Lai', '', null, '0');
INSERT INTO `dm_xa` VALUES ('964', '1060541', 'Mộ Đạo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('965', '1060543', 'Đức Long', '', null, '0');
INSERT INTO `dm_xa` VALUES ('966', '1060545', 'Chi Lăng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('967', '1060547', 'Hán Quảng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('968', '1060701', 'Thị trấn Lim', '', null, '0');
INSERT INTO `dm_xa` VALUES ('969', '1060703', 'Phú Lân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('970', '1060705', 'Khắc Niệm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('971', '1060707', 'Nội Duệ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('972', '1060709', 'Hạp Lĩnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('973', '1060711', 'Liên Bão', '', null, '0');
INSERT INTO `dm_xa` VALUES ('974', '1060713', 'Lạc Vệ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('975', '1060715', 'Hiên Vân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('976', '1060717', 'Việt Đoàn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('977', '1060719', 'Hoàn Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('978', '1060721', 'Phật Tích', '', null, '0');
INSERT INTO `dm_xa` VALUES ('979', '1060723', 'Đại Đồng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('980', '1060725', 'Minh Đạo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('981', '1060727', 'Chi Phương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('982', '1060729', 'Cảnh Hưng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('983', '1060731', 'Tân Chi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('984', '1060801', 'Thị trấn Từ Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('985', '1060803', 'Đình Bảng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('986', '1060805', 'Hương Mạc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('987', '1060807', 'Tam Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('988', '1060809', 'Phù Khê', '', null, '0');
INSERT INTO `dm_xa` VALUES ('989', '1060811', 'Tương Giang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('990', '1060813', 'Đồng Nguyên', '', null, '0');
INSERT INTO `dm_xa` VALUES ('991', '1060815', 'Đồng Quang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('992', '1060817', 'Tân Hồng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('993', '1060819', 'Châu Khê', '', null, '0');
INSERT INTO `dm_xa` VALUES ('994', '1060821', 'Phù Chẩn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('995', '1060901', 'Thị trấn Hồ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('996', '1060903', 'Hoài Thượng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('997', '1060905', 'Đại Đồng Thành', '', null, '0');
INSERT INTO `dm_xa` VALUES ('998', '1060907', 'Song Hồ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('999', '1060909', 'Mão Điền', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1000', '1060911', 'Đình Tổ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1001', '1060913', 'An Bình', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1002', '1060915', 'Trí Quả', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1003', '1060917', 'Gia Đông', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1004', '1060919', 'Thanh Khương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1005', '1060921', 'Trạm Lộ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1006', '1060923', 'Hà Mãn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1007', '1060925', 'Xuân Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1008', '1060927', 'Ninh Xá', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1009', '1060929', 'Ngũ Thái', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1010', '1060931', 'Nguyệnt Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1011', '1060933', 'Nghĩa Đạo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1012', '1060935', 'Song Liễu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1013', '1061101', 'Xuân Lai', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1014', '1061103', 'Vạn Ninh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1015', '1061105', 'Thái Bảo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1016', '1061107', 'Đại Lai', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1017', '1061109', 'Giang Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1018', '1061111', 'Đông Cứu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1019', '1061113', 'Cao Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1020', '1061115', 'Song Giang', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1021', '1061117', 'Lãng Ngân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1022', '1061119', 'Bình Dương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1023', '1061121', 'Nhân Thắng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1024', '1061123', 'Đại Bái', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1025', '1061125', 'Quỳnh Phú', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1026', '1061301', 'Thị trấn Thứa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1027', '1061303', 'Trung Kênh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1028', '1061305', 'Phú Hoà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1029', '1061307', 'Mỹ Hương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1030', '1061309', 'Tân Lãng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1031', '1061311', 'Quảng Phú', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1032', '1061313', 'Lai Hạ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1033', '1061315', 'An Thịnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1034', '1061317', 'Trừng Xá', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1035', '1061319', 'Trung Chính', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1036', '1061321', 'Minh Tân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1037', '1061323', 'Phú Lương', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1038', '1061325', 'Bình Định', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1039', '1061327', 'Lâm Thao', '', null, '0');
INSERT INTO `dm_xa` VALUES ('1040', '1070101', 'Phạm Ngũ Lão', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1041', '1070103', 'Nguyễn Trãi', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1042', '1070105', 'Lê Thanh Nghị', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1043', '1070107', 'Trần Phú', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1044', '1070109', 'Quang Trung', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1045', '1070111', 'Trần Hưng Đạo', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1046', '1070113', 'Cẩm Thượng', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1047', '1070115', 'Bình Hàn', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1048', '1070117', 'Ngọc Châu', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1049', '1070119', 'Thanh Bình', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1050', '1070121', 'Hải Tân', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1051', '1070123', 'Việt Hòa', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1052', '1070125', 'Tứ Minh', '', '40', '0');
INSERT INTO `dm_xa` VALUES ('1053', '1070301', 'Thị trấn Sao Đỏ', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1054', '1070303', 'Thị trấn Nông Trường', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1055', '1070305', 'Thị trấn Phả Lại', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1056', '1070307', 'Hưng Đạo', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1057', '1070309', 'Lê Lợi', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1058', '1070311', 'Bắc An', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1059', '1070313', 'Hoàng Hoa Thám', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1060', '1070315', 'Cổ Thành', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1061', '1070317', 'Cộng Hòa', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1062', '1070319', 'Hoàng Tân', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1063', '1070321', 'Hoàng Tiến', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1064', '1070323', 'Nhân Huệ', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1065', '1070325', 'Văn An', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1066', '1070327', 'Chí Minh', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1067', '1070329', 'Thái Học', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1068', '1070331', 'Văn Đức', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1069', '1070333', 'Tân Dân', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1070', '1070335', 'An Lạc', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1071', '1070337', 'Kênh Giang', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1072', '1070339', 'Đồng Lạc', '', '41', '0');
INSERT INTO `dm_xa` VALUES ('1073', '1070501', 'Thị trấn Nam Sách', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1074', '1070503', 'Nam Hưng', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1075', '1070505', 'Nam Tân', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1076', '1070507', 'Thanh Quang', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1077', '1070509', 'Quốc Tuấn', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1078', '1070511', 'Hợp Tiến', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1079', '1070513', 'Hiệp Cát', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1080', '1070515', 'Nam Chính', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1081', '1070517', 'Nam Trung', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1082', '1070519', 'An Sơn', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1083', '1070521', 'Thái Tân', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1084', '1070523', 'Minh Tân', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1085', '1070525', 'Hồng Phong', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1086', '1070527', 'Nam Hồng', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1087', '1070529', 'Thượng Đạt', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1088', '1070531', 'An Lâm', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1089', '1070533', 'Nam Đồng', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1090', '1070535', 'ái Quốc', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1091', '1070537', 'Đồng Lạc', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1092', '1070539', 'An Châu', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1093', '1070541', 'Phú Điền', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1094', '1070543', 'An Bình', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1095', '1070545', 'Cộng Hòa', '', '42', '0');
INSERT INTO `dm_xa` VALUES ('1096', '1070701', 'Thị trấn Thanh Hà', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1097', '1070703', 'Hồng Lạc', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1098', '1070705', 'Việt Hồng', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1099', '1070707', 'Thanh An', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1100', '1070709', 'Thanh Lang', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1101', '1070711', 'Liên Mạc', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1102', '1070713', 'Cẩm Chế', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1103', '1070715', 'Tân Việt', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1104', '1070717', 'Quyết Thắng', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1105', '1070719', 'Tiền Tiến', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1106', '1070721', 'Tân An', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1107', '1070723', 'Thanh Hải', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1108', '1070725', 'An Lương', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1109', '1070727', 'Phượng Hoàng', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1110', '1070729', 'Thanh Khê', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1111', '1070731', 'Thanh Xá', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1112', '1070733', 'Thanh Xuân', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1113', '1070735', 'Thanh Thủy', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1114', '1070737', 'Thanh Sơn', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1115', '1070739', 'Hợp Đức', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1116', '1070741', 'Trường Thành', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1117', '1070743', 'Thanh Bính', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1118', '1070745', 'Thanh Cường', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1119', '1070747', 'Thanh Hồng', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1120', '1070749', 'Vĩnh Lập', '', '43', '0');
INSERT INTO `dm_xa` VALUES ('1121', '1070901', 'Thị trấn An Lưu', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1122', '1070903', 'Minh Hòa', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1123', '1070905', 'Hiến Thành', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1124', '1070907', 'Thái Thịnh', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1125', '1070909', 'Long Xuyên', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1126', '1070911', 'Hiệp An', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1127', '1070913', 'An Phụ', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1128', '1070915', 'Thượng Quận', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1129', '1070917', 'Hiệp Hòa', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1130', '1070919', 'Thăng Long', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1131', '1070921', 'Lạc Long', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1132', '1070923', 'Quang Trung', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1133', '1070925', 'Phúc Thành B', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1134', '1070927', 'Lê Ninh', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1135', '1070929', 'Bạch Đằng', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1136', '1070931', 'Thất Hùng', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1137', '1070933', 'Thái Sơn', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1138', '1070935', 'An Sinh', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1139', '1070937', 'Phạm Mệnh', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1140', '1070939', 'Hiệp Sơn', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1141', '1070941', 'Hoành Sơn', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1142', '1070943', 'Duy Tân', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1143', '1070945', 'Phú Thứ', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1144', '1070947', 'Minh Tân', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1145', '1070949', 'Tân Dân', '', '44', '0');
INSERT INTO `dm_xa` VALUES ('1146', '1071101', 'Thị trấn Phú Thái', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1147', '1071103', 'Lai Vu', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1148', '1071105', 'Cộng Hòa', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1149', '1071107', 'Thượng Vũ', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1150', '1071109', 'Cổ Dũng', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1151', '1071111', 'Việt Hưng', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1152', '1071113', 'Tuấn Hưng', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1153', '1071115', 'Kim Xuyên', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1154', '1071117', 'Phúc Thành A', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1155', '1071119', 'Kim Lương', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1156', '1071121', 'Kim Khê', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1157', '1071123', 'Kim Anh', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1158', '1071125', 'Ngũ Phúc', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1159', '1071127', 'Kim Đính', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1160', '1071129', 'Kim Tân', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1161', '1071131', 'Bình Dân', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1162', '1071133', 'Cẩm La', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1163', '1071135', 'Liên Hòa', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1164', '1071137', 'Đồng Gia', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1165', '1071139', 'Đại Đức', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1166', '1071141', 'Tam Kỳ', '', '45', '0');
INSERT INTO `dm_xa` VALUES ('1167', '1071301', 'Thị trấn Gia Lộc', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1168', '1071303', 'Thạch Khôi', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1169', '1071305', 'Liên Hồng', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1170', '1071307', 'Thống Nhất', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1171', '1071309', 'Trùng Khánh', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1172', '1071311', 'Yết Kiêu', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1173', '1071313', 'Gia Hòa', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1174', '1071315', 'Lê Lợi', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1175', '1071317', 'Đoàn Thượng', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1176', '1071319', 'Toàn Thắng', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1177', '1071321', 'Hồng Hưng', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1178', '1071323', 'Hoàng Diệu', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1179', '1071325', 'Tân Tiến', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1180', '1071327', 'Tân Hưng', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1181', '1071329', 'Gia Xuyên', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1182', '1071331', 'Gia Tân', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1183', '1071333', 'Gia Lương', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1184', '1071335', 'Gia Khánh', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1185', '1071337', 'Thống Kênh', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1186', '1071339', 'Đồng Quang', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1187', '1071341', 'Đức Xương', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1188', '1071343', 'Quang Minh', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1189', '1071345', 'Nhật Tân', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1190', '1071347', 'Phạm Trấn', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1191', '1071349', 'Phương Hưng', '', '46', '0');
INSERT INTO `dm_xa` VALUES ('1192', '1071501', 'Thị trấn Tứ Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1193', '1071503', 'Ngọc Sơn', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1194', '1071505', 'Kỳ Sơn', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1195', '1071507', 'Đại Đồng', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1196', '1071509', 'Hưng Đạo', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1197', '1071511', 'Tái Sơn', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1198', '1071513', 'Quang Phục', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1199', '1071515', 'Bình Lăng', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1200', '1071517', 'Ngọc Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1201', '1071519', 'Đông Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1202', '1071521', 'Tây Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1203', '1071523', 'Tứ Xuyên', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1204', '1071525', 'Văn Tố', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1205', '1071527', 'Phượng Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1206', '1071529', 'Cộng Lạc', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1207', '1071531', 'An Thanh', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1208', '1071533', 'Tiên Động', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1209', '1071535', 'Quang Trung', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1210', '1071537', 'Nguyên Giáp', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1211', '1071539', 'Hà Thanh', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1212', '1071541', 'Hà Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1213', '1071543', 'Tân Kỳ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1214', '1071545', 'Đại Hợp', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1215', '1071547', 'Quảng Nghiệp', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1216', '1071549', 'Dân Chủ', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1217', '1071551', 'Minh Đức', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1218', '1071553', 'Quang Khải', '', '47', '0');
INSERT INTO `dm_xa` VALUES ('1219', '1071701', 'Thị trấn Cẩm Giàng', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1220', '1071703', 'Cẩm Hưng', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1221', '1071705', 'Ngọc Liên', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1222', '1071707', 'Kim Giang', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1223', '1071709', 'Thạch Lỗi', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1224', '1071711', 'Cẩm Sơn', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1225', '1071713', 'Cẩm Định', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1226', '1071715', 'Cẩm Hoàng', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1227', '1071717', 'Cẩm Vũ', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1228', '1071719', 'Cẩm Văn', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1229', '1071721', 'Đức Chính', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1230', '1071723', 'Cao An', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1231', '1071725', 'Lai Cách', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1232', '1071727', 'Cẩm Đoài', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1233', '1071729', 'Cẩm Đông', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1234', '1071731', 'Tân Trường', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1235', '1071733', 'Cẩm Phúc', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1236', '1071735', 'Cẩm Điền', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1237', '1071737', 'Lương Điền', '', '48', '0');
INSERT INTO `dm_xa` VALUES ('1238', '1071901', 'Thị trấn Kẻ Sặt', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1239', '1071903', 'Hưng Thịnh', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1240', '1071905', 'Tráng Liệt', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1241', '1071907', 'Vĩnh Tuy', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1242', '1071909', 'Vĩnh Hồng', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1243', '1071911', 'Hùng Thắng', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1244', '1071913', 'Long Xuyên', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1245', '1071915', 'Tân Việt', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1246', '1071917', 'Hồng Khê', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1247', '1071919', 'Cổ Bi', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1248', '1071921', 'Nhân Quyền', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1249', '1071923', 'Bình Xuyên', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1250', '1071925', 'Thái Học', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1251', '1071927', 'Bình Minh', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1252', '1071929', 'Tân Hồng', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1253', '1071931', 'Thái Hòa', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1254', '1071933', 'Thái Dương', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1255', '1071935', 'Thúc Kháng', '', '49', '0');
INSERT INTO `dm_xa` VALUES ('1256', '1072101', 'Thị trấn Thanh Miện', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1257', '1072103', 'Thanh Giang', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1258', '1072105', 'Diên Hồng', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1259', '1072107', 'Tiền Phong', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1260', '1072109', 'Chi Lăng Nam', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1261', '1072111', 'Chi Lăng Bắc', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1262', '1072113', 'Ngũ Hùng', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1263', '1072115', 'Tứ Cường', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1264', '1072117', 'Cao Thắng', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1265', '1072119', 'Phạm Kha', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1266', '1072121', 'Hùng Sơn', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1267', '1072123', 'Đoàn Tùng', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1268', '1072125', 'Lam Sơn', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1269', '1072127', 'Thanh Tùng', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1270', '1072129', 'Lê Hồng', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1271', '1072131', 'Đoàn Kết', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1272', '1072133', 'Ngô Quyền', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1273', '1072135', 'Tân Trào', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1274', '1072137', 'Hồng Quang', '', '50', '0');
INSERT INTO `dm_xa` VALUES ('1275', '1072301', 'Thị trấn Ninh Giang', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1276', '1072303', 'Hiệp Lực', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1277', '1072305', 'Hồng Dụ', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1278', '1072307', 'Đồng Tâm', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1279', '1072309', 'Vĩnh Hòa', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1280', '1072311', 'Ninh Thành', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1281', '1072313', 'Tân Hương', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1282', '1072315', 'Nghĩa An', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1283', '1072317', 'Quyết Thắng', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1284', '1072319', 'ứng Hoè', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1285', '1072321', 'Ninh Hòa', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1286', '1072323', 'Vạn Phúc', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1287', '1072325', 'Hồng Đức', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1288', '1072327', 'An Đức', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1289', '1072329', 'Đông Xuyên', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1290', '1072331', 'Ninh Hải', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1291', '1072333', 'Ninh Thọ', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1292', '1072335', 'Kiến Quốc', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1293', '1072337', 'Tân Phong', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1294', '1072339', 'Hồng Phúc', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1295', '1072341', 'Hưng Long', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1296', '1072343', 'Hưng Thái', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1297', '1072345', 'Văn Hội', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1298', '1072347', 'Tân Quang', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1299', '1072349', 'Quang Hưng', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1300', '1072351', 'Hoàng Hanh', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1301', '1072353', 'Hồng Thái', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1302', '1072355', 'Văn Giang', '', '51', '0');
INSERT INTO `dm_xa` VALUES ('1303', '1090101', 'Lam Sơn', '', '52', '0');
INSERT INTO `dm_xa` VALUES ('1304', '1090103', 'Hiến Nam', '', '52', '0');
INSERT INTO `dm_xa` VALUES ('1305', '1090105', 'Lê Lợi', '', '52', '0');
INSERT INTO `dm_xa` VALUES ('1306', '1090107', 'Minh Khai', '', '52', '0');
INSERT INTO `dm_xa` VALUES ('1307', '1090109', 'Quang Trung', '', '52', '0');
INSERT INTO `dm_xa` VALUES ('1308', '1090111', 'Hồng Châu', '', '52', '0');
INSERT INTO `dm_xa` VALUES ('1309', '1090301', 'Thị trấn Bần Yên Nhân', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1310', '1090303', 'Thị trấn Như Quỳnh', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1311', '1090305', 'Thị trấn Yên Mỹ', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1312', '1090307', 'Lạc Đạo', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1313', '1090309', 'Chỉ Đạo', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1314', '1090311', 'Đại Đồng', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1315', '1090313', 'Việt Hưng', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1316', '1090315', 'Tân Quang', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1317', '1090317', 'Đình Dù', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1318', '1090319', 'Minh Hải', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1319', '1090321', 'Phan Đình Phùng', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1320', '1090323', 'Lương Tài', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1321', '1090325', 'Trưng Trắc', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1322', '1090327', 'Lạc Hồng', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1323', '1090329', 'Cẩm Xá', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1324', '1090331', 'Dương Quang', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1325', '1090333', 'Hòa Phong', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1326', '1090335', 'Nghĩa Trụ', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1327', '1090337', 'Nhân Hòa', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1328', '1090339', 'Vĩnh Khúc', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1329', '1090341', 'Giai Phạm', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1330', '1090343', 'Nghĩa Hiệp', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1331', '1090345', 'Dị Sử', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1332', '1090347', 'Bạch Sam', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1333', '1090349', 'Minh Đức', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1334', '1090351', 'Đồng Than', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1335', '1090353', 'Ngọc Long', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1336', '1090355', 'Lưu Xá', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1337', '1090357', 'Phùng Chí Kiên', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1338', '1090359', 'Xuân Dục', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1339', '1090361', 'Ngọc Lâm', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1340', '1090363', 'Thanh Long', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1341', '1090365', 'Tân Lập', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1342', '1090367', 'Hưng Long', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1343', '1090369', 'Trung Hòa', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1344', '1090371', 'Trung Hưng', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1345', '1090373', 'Thường Kiệt', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1346', '1090375', 'Tân Việt', '', '54', '0');
INSERT INTO `dm_xa` VALUES ('1347', '1090501', 'Thị trấn Khoái Châu', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1348', '1090503', 'Xuân Quan', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1349', '1090505', 'Cửu Cao', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1350', '1090507', 'Phụng Công', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1351', '1090509', 'Long Hưng', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1352', '1090511', 'Văn Phúc', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1353', '1090513', 'Liên Nghĩa', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1354', '1090515', 'Tân Tiến', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1355', '1090517', 'Thắng Lợi', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1356', '1090519', 'Mễ Sở', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1357', '1090521', 'Đông Tảo', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1358', '1090523', 'Hoàn Long', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1359', '1090525', 'Bình Minh', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1360', '1090527', 'Yên Phú', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1361', '1090529', 'Việt Cường', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1362', '1090531', 'Dạ Trạch', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1363', '1090533', 'Yên Hòa', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1364', '1090535', 'Minh Châu', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1365', '1090537', 'Hàm Tử', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1366', '1090539', 'Ông Đình', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1367', '1090541', 'Tân Dân', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1368', '1090543', 'Tứ Dân', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1369', '1090545', 'An Vĩ', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1370', '1090547', 'Đông Kết', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1371', '1090549', 'Bình Kiều', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1372', '1090551', 'Dân Tiến', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1373', '1090553', 'Đồng Tiến', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1374', '1090555', 'Hồng Tiến', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1375', '1090557', 'Tân Châu', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1376', '1090559', 'Liên Khê', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1377', '1090561', 'Phùng Hưng', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1378', '1090563', 'Việt Hòa', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1379', '1090565', 'Đông Ninh', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1380', '1090567', 'Đại Tập', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1381', '1090569', 'Chí Tân', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1382', '1090571', 'Đại Hưng', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1383', '1090573', 'Thuần Hưng', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1384', '1090575', 'Thành Công', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1385', '1090577', 'Nhuế Dương', '', '56', '0');
INSERT INTO `dm_xa` VALUES ('1386', '1090701', 'Thị trấn Ân Thi', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1387', '1090703', 'Phù ủng', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1388', '1090705', 'Bắc Sơn', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1389', '1090707', 'Bãi Sậy', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1390', '1090709', 'Đào Dương', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1391', '1090711', 'Tân Phúc', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1392', '1090713', 'Vân Du', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1393', '1090715', 'Quang Vinh', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1394', '1090717', 'Xuân Trúc', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1395', '1090719', 'Hoàng Hoa Thám', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1396', '1090721', 'Quảng Lãng', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1397', '1090723', 'Văn Nhuệ', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1398', '1090725', 'Đặng Lễ', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1399', '1090727', 'Cẩm Ninh', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1400', '1090729', 'Nguyễn Trãi', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1401', '1090731', 'Đa Lộc', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1402', '1090733', 'Hồ Tùng Mậu', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1403', '1090735', 'Tiền Phong', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1404', '1090737', 'Hồng Vân', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1405', '1090739', 'Hồng Quang', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1406', '1090741', 'Hạ Lễ', '', '58', '0');
INSERT INTO `dm_xa` VALUES ('1407', '1090901', 'Nghĩa Dân', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1408', '1090903', 'Toàn Thắng', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1409', '1090905', 'Vĩnh Xá', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1410', '1090907', 'Ngũ Lão', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1411', '1090909', 'Thọ Vinh', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1412', '1090911', 'Đồng Thanh', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1413', '1090913', 'Song Mai', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1414', '1090915', 'Tạ Xá', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1415', '1090917', 'Nhân La', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1416', '1090919', 'Phú Thịnh', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1417', '1090921', 'Mai Động', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1418', '1090923', 'Đức Hợp', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1419', '1090925', 'Hùng An', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1420', '1090927', 'Ngọc Thanh', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1421', '1090929', 'Lương Bằng', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1422', '1090931', 'Vũ Xá', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1423', '1090933', 'Hiệp Cường', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1424', '1090935', 'Phú Cường', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1425', '1090937', 'Hùng Cường', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1426', '1090939', 'Bảo Khê', '', '59', '0');
INSERT INTO `dm_xa` VALUES ('1427', '1091101', 'Minh Tân', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1428', '1091103', 'Phan Sào Nam', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1429', '1091105', 'Trần Cao', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1430', '1091107', 'Quang Hưng', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1431', '1091109', 'Minh Hoàng', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1432', '1091111', 'Đoàn Đào', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1433', '1091113', 'Tống Phan', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1434', '1091115', 'Đình Cao', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1435', '1091117', 'Nhật Quang', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1436', '1091119', 'Tiền Tiến', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1437', '1091121', 'Tam Đa', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1438', '1091123', 'Minh Tiến', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1439', '1091125', 'Nguyên Hòa', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1440', '1091127', 'Tống Trân', '', '60', '0');
INSERT INTO `dm_xa` VALUES ('1441', '1091301', 'Thị trấn Vương', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1442', '1091303', 'Hưng Đạo', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1443', '1091305', 'Ngô Quyền', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1444', '1091307', 'Nhật Tân', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1445', '1091309', 'Dị Chế', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1446', '1091311', 'Lệ Xá', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1447', '1091313', 'Trung Nghĩa', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1448', '1091315', 'An Viên', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1449', '1091317', 'Đức Thắng', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1450', '1091319', 'Trung Dũng', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1451', '1091321', 'Hải Triều', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1452', '1091323', 'Liên Phương', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1453', '1091325', 'Thủ Sỹ', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1454', '1091327', 'Thiện Phiến', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1455', '1091329', 'Thụy Lôi', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1456', '1091331', 'Cương Chính', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1457', '1091333', 'Minh Phương', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1458', '1091335', 'Phương Chiểu', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1459', '1091337', 'Quảng Châu', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1460', '1091339', 'Hồng Nam', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1461', '1091341', 'Tân Hưng', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1462', '1091343', 'Hoàng Hanh', '', '61', '0');
INSERT INTO `dm_xa` VALUES ('1463', '1110101', 'Trần Hưng Đạo', '', '62', '0');
INSERT INTO `dm_xa` VALUES ('1464', '1110103', 'Minh Khai', '', '62', '0');
INSERT INTO `dm_xa` VALUES ('1465', '1110105', 'Hai Bà Trưng', '', '62', '0');
INSERT INTO `dm_xa` VALUES ('1466', '1110107', 'Lương Khánh Thiện', '', '62', '0');
INSERT INTO `dm_xa` VALUES ('1467', '1110109', 'Thanh Châu', '', '62', '0');
INSERT INTO `dm_xa` VALUES ('1468', '1110111', 'Liêm Chính', '', '62', '0');
INSERT INTO `dm_xa` VALUES ('1469', '1110301', 'Thị trấn Hòa Mạc', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1470', '1110303', 'Thị trấn Đồng Văn', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1471', '1110305', 'Duy Minh', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1472', '1110307', 'Duy Hải', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1473', '1110309', 'Bạch Thượng', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1474', '1110311', 'Mộc Bắc', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1475', '1110313', 'Mộc Nam', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1476', '1110315', 'Châu Giang', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1477', '1110317', 'Chuyên Ngoại', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1478', '1110319', 'Trác Văn', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1479', '1110321', 'Yên Bắc', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1480', '1110323', 'Yên Nam', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1481', '1110325', 'Hoàng Đông', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1482', '1110327', 'Tiên Nội', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1483', '1110329', 'Tiên Ngoại', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1484', '1110331', 'Tiên Tân', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1485', '1110333', 'Tiên Hiệp', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1486', '1110335', 'Đọi Sơn', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1487', '1110337', 'Tiền Phong', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1488', '1110339', 'Châu Sơn', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1489', '1110341', 'Tiên Hải', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1490', '1110343', 'Lam Hạ', '', '63', '0');
INSERT INTO `dm_xa` VALUES ('1491', '1110501', 'Thị trấn Quế', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1492', '1110503', 'Nguyễn úy', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1493', '1110505', 'Tượng Lĩnh', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1494', '1110507', 'Lê Hồ', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1495', '1110509', 'Đại Cương', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1496', '1110511', 'Nhật Tựu', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1497', '1110513', 'Hoàng Tây', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1498', '1110515', 'Văn Xá', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1499', '1110517', 'Kim Bình', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1500', '1110519', 'Phù Vân', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1501', '1110521', 'Thanh Sơn', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1502', '1110523', 'Ngọc Sơn', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1503', '1110525', 'Ba Sao', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1504', '1110527', 'Khả Phong', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1505', '1110529', 'Tân Sơn', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1506', '1110531', 'Châu Sơn', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1507', '1110533', 'Liên Sơn', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1508', '1110535', 'Thụy Lôi', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1509', '1110537', 'Thi Sơn', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1510', '1110539', 'Nhật Tân', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1511', '1110541', 'Đồng Hóa', '', '64', '0');
INSERT INTO `dm_xa` VALUES ('1512', '1110701', 'Thị trấn Vĩnh Trụ', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1513', '1110703', 'Hợp Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1514', '1110705', 'Văn Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1515', '1110707', 'Chính Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1516', '1110709', 'Nguyên Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1517', '1110711', 'Công Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1518', '1110713', 'Đức Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1519', '1110715', 'Đạo Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1520', '1110717', 'Chân Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1521', '1110719', 'Bắc Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1522', '1110721', 'Nhân Đạo', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1523', '1110723', 'Đồng Lý', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1524', '1110725', 'Nhân Hưng', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1525', '1110727', 'Nhân Thịnh', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1526', '1110729', 'Nhân Khang', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1527', '1110731', 'Nhân Chính', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1528', '1110733', 'Nhân Nghĩa', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1529', '1110735', 'Nhân Bình', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1530', '1110737', 'Xuân Khê', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1531', '1110739', 'Nhân Mỹ', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1532', '1110741', 'Phú Phúc', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1533', '1110743', 'Tiến Thắng', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1534', '1110745', 'Hòa Hậu', '', '65', '0');
INSERT INTO `dm_xa` VALUES ('1535', '1110901', 'Thị trấn Kiện Khê', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1536', '1110903', 'Liêm Chung', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1537', '1110905', 'Liêm Tuyền', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1538', '1110907', 'Liêm Cần', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1539', '1110909', 'Liêm Tiết', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1540', '1110911', 'Liêm Phong', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1541', '1110913', 'Thanh Hà', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1542', '1110915', 'Thanh Bình', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1543', '1110917', 'Thanh Tuyền', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1544', '1110919', 'Thanh Thủy', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1545', '1110921', 'Thanh Tân', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1546', '1110923', 'Thanh Nghị', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1547', '1110925', 'Thanh Hải', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1548', '1110927', 'Thanh Hương', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1549', '1110929', 'Thanh Tâm', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1550', '1110931', 'Thanh Nguyên', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1551', '1110933', 'Thanh Phong', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1552', '1110935', 'Thanh Lưu', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1553', '1110937', 'Liêm Thuận', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1554', '1110939', 'Liêm Túc', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1555', '1110941', 'Liêm Sơn', '', '66', '0');
INSERT INTO `dm_xa` VALUES ('1556', '1111101', 'Thị trấn Bình Mỹ', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1557', '1111103', 'Bình Nghĩa', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1558', '1111105', 'Đinh Xá', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1559', '1111107', 'Tràng An', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1560', '1111109', 'Đồng Du', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1561', '1111111', 'Trịnh Xá', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1562', '1111113', 'Đồn Xá', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1563', '1111115', 'Mỹ Thọ', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1564', '1111117', 'An Mỹ', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1565', '1111119', 'La Sơn', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1566', '1111121', 'An Đổ', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1567', '1111123', 'Tiêu Động', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1568', '1111125', 'Trung Lương', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1569', '1111127', 'Bối Cầu', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1570', '1111129', 'An Nội', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1571', '1111131', 'Bồ Đề', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1572', '1111133', 'An Ninh', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1573', '1111135', 'Hưng Công', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1574', '1111137', 'Ngọc Lũ', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1575', '1111139', 'Vụ Bản', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1576', '1111141', 'An Lão', '', '67', '0');
INSERT INTO `dm_xa` VALUES ('1577', '1130101', 'Trần Tế Xương', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1578', '1130103', 'Hạ Long', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1579', '1130105', 'Vị Xuyên', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1580', '1130107', 'Vị Hoàng', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1581', '1130109', 'Nguyễn Du', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1582', '1130111', 'Bà Triệu', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1583', '1130113', 'Cửa Bắc', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1584', '1130115', 'Trần Hưng Đạo', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1585', '1130117', 'Phan Đình Phùng', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1586', '1130119', 'Ngô Quyền', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1587', '1130121', 'Năng Tĩnh', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1588', '1130123', 'Trần Đăng Ninh', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1589', '1130125', 'Trường Thi', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1590', '1130127', 'Văn Miếu', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1591', '1130129', 'Quang Trung', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1592', '1130131', 'Mỹ Xá', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1593', '1130133', 'Lộc Hạ', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1594', '1130135', 'Lộc Vượng', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1595', '1130137', 'Lộc An', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1596', '1130139', 'Lộc Hoà', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1597', '1130141', 'Nam Phong', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1598', '1130143', 'Nam Vân', '', '68', '0');
INSERT INTO `dm_xa` VALUES ('1599', '1130301', 'Thị trấn Gôi', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1600', '1130303', 'Đại Thắng', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1601', '1130305', 'Hợp Hưng', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1602', '1130307', 'Trung Thành', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1603', '1130309', 'Vĩnh Hào', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1604', '1130311', 'Minh Tân', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1605', '1130313', 'Cộng Hòa', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1606', '1130315', 'Quang Trung', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1607', '1130317', 'Đại An', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1608', '1130319', 'Tân Khánh', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1609', '1130321', 'Hiển Khánh', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1610', '1130323', 'Liên Bảo', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1611', '1130325', 'Liên Minh', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1612', '1130327', 'Minh Thuận', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1613', '1130329', 'Kim Thái', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1614', '1130331', 'Tam Thanh', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1615', '1130333', 'Thành Lợi', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1616', '1130335', 'Tân Thành', '', '69', '0');
INSERT INTO `dm_xa` VALUES ('1617', '1130501', 'Mỹ Trung', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1618', '1130503', 'Mỹ Phúc', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1619', '1130505', 'Mỹ Hưng', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1620', '1130507', 'Mỹ Hà', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1621', '1130509', 'Mỹ Thắng', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1622', '1130511', 'Mỹ Thịnh', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1623', '1130513', 'Mỹ Tiến', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1624', '1130515', 'Mỹ Thuận', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1625', '1130517', 'Mỹ Thành', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1626', '1130519', 'Mỹ Tân', '', '70', '0');
INSERT INTO `dm_xa` VALUES ('1627', '1130701', 'Thị trấn Lâm', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1628', '1130703', 'Yên Trung', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1629', '1130705', 'Yên Thành', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1630', '1130707', 'Yên Thọ', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1631', '1130709', 'Yên Phương', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1632', '1130711', 'Yên Nghĩa', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1633', '1130713', 'Yên Tân', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1634', '1130715', 'Yên Lợi', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1635', '1130717', 'Yên Minh', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1636', '1130719', 'Yên Bình', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1637', '1130721', 'Yên Dương', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1638', '1130723', 'Yên Mỹ', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1639', '1130725', 'Yên Ninh', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1640', '1130727', 'Yên Xá', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1641', '1130729', 'Yên Chính', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1642', '1130731', 'Yên Phú', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1643', '1130733', 'Yên Hưng', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1644', '1130735', 'Yên Phong', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1645', '1130737', 'Yên Khánh', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1646', '1130739', 'Yên Hồng', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1647', '1130741', 'Yên Quang', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1648', '1130743', 'Yên Tiến', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1649', '1130745', 'Yên Bằng', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1650', '1130747', 'Yên Khang', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1651', '1130749', 'Yên Thắng', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1652', '1130751', 'Yên Đồng', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1653', '1130753', 'Yên Trị', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1654', '1130755', 'Yên Nhân', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1655', '1130757', 'Yên Lương', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1656', '1130759', 'Yên Cường', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1657', '1130761', 'Yên Lộc', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1658', '1130763', 'Yên Phúc', '', '71', '0');
INSERT INTO `dm_xa` VALUES ('1659', '1130901', 'Điền Xá', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1660', '1130903', 'Nam Mỹ', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1661', '1130905', 'Nam Thắng', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1662', '1130907', 'Nam Tiến', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1663', '1130909', 'Tân Thịnh', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1664', '1130911', 'Nghĩa An', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1665', '1130913', 'Nam Toàn', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1666', '1130915', 'Hồng Quang', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1667', '1130917', 'Nam Cường', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1668', '1130919', 'Nam Hồng', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1669', '1130921', 'Nam Hùng', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1670', '1130923', 'Nam Giang', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1671', '1130925', 'Nam Hoa', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1672', '1130927', 'Nam Dương', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1673', '1130929', 'Đồng Sơn', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1674', '1130931', 'Bình Minh', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1675', '1130933', 'Nam Thái', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1676', '1130935', 'Nam Lợi', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1677', '1130937', 'Nam Thanh', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1678', '1130939', 'Nam Hải', '', '72', '0');
INSERT INTO `dm_xa` VALUES ('1679', '1131101', 'Thị trấn Cổ Lễ', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1680', '1131103', 'Phương Định', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1681', '1131105', 'Trung Đông', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1682', '1131107', 'Trực Chính', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1683', '1131109', 'Liêm Hải', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1684', '1131111', 'Trực Thuận', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1685', '1131113', 'Trực Đạo', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1686', '1131115', 'Cát Thành', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1687', '1131117', 'Việt Hùng', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1688', '1131119', 'Trực Hưng', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1689', '1131121', 'Trực Khang', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1690', '1131123', 'Trực Thanh', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1691', '1131125', 'Trực Nội', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1692', '1131127', 'Trực Mỹ', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1693', '1131129', 'Trực Tuấn', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1694', '1131131', 'Trực Thắng', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1695', '1131133', 'Trực Đại', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1696', '1131135', 'Trực Thái', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1697', '1131137', 'Trực Cường', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1698', '1131139', 'Trực Phú', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1699', '1131141', 'Trực Hùng', '', '73', '0');
INSERT INTO `dm_xa` VALUES ('1700', '1131301', 'Xuân Thượng', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1701', '1131303', 'Xuân Châu', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1702', '1131305', 'Xuân Hồng', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1703', '1131307', 'Xuân Thủy', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1704', '1131309', 'Xuân Ngọc', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1705', '1131311', 'Xuân Hùng', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1706', '1131313', 'Xuân Tiến', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1707', '1131315', 'Xuân Kiên', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1708', '1131317', 'Xuân Ninh', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1709', '1131319', 'Xuân Hòa', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1710', '1131321', 'Xuân Vinh', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1711', '1131323', 'Xuân Thành', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1712', '1131325', 'Xuân Bắc', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1713', '1131327', 'Xuân Phương', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1714', '1131329', 'Xuân Trung', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1715', '1131331', 'Xuân Đài', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1716', '1131333', 'Xuân Tân', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1717', '1131335', 'Xuân Phong', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1718', '1131337', 'Xuân Phú', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1719', '1131339', 'Thọ Nghiệp', '', '74', '0');
INSERT INTO `dm_xa` VALUES ('1720', '1131501', 'Thị trấn Ngô Đồng', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1721', '1131503', 'Hoành Sơn', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1722', '1131505', 'Giao Nhân', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1723', '1131507', 'Giao Châu', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1724', '1131509', 'Giao Hải', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1725', '1131511', 'Giao Long', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1726', '1131513', 'Bình Hòa', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1727', '1131515', 'Giao Hà', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1728', '1131517', 'Giao Tân', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1729', '1131519', 'Giao Tiến', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1730', '1131521', 'Giao Yến', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1731', '1131523', 'Giao Thịnh', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1732', '1131525', 'Giao Lâm', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1733', '1131527', 'Giao Phong', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1734', '1131529', 'Bạch Long', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1735', '1131531', 'Giao Thiện', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1736', '1131533', 'Giao An', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1737', '1131535', 'Giao Thanh', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1738', '1131537', 'Giao Hương', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1739', '1131539', 'Hồng Thuận', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1740', '1131541', 'Giao Lạc', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1741', '1131543', 'Giao Xuân', '', '75', '0');
INSERT INTO `dm_xa` VALUES ('1742', '1131701', 'Thị trấn Liễu Đề', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1743', '1131703', 'Thị trấn Rạng Đông', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1744', '1131705', 'Nghĩa Đồng', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1745', '1131707', 'Nghĩa Thịnh', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1746', '1131709', 'Nghĩa Minh', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1747', '1131711', 'Hoàng Nam', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1748', '1131713', 'Nghĩa Châu', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1749', '1131715', 'Nghĩa Thái', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1750', '1131717', 'Nghĩa Trung', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1751', '1131719', 'Nghĩa Sơn', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1752', '1131721', 'Nghĩa Lạc', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1753', '1131723', 'Nghĩa Hồng', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1754', '1131725', 'Nghĩa Phong', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1755', '1131727', 'Nghĩa Phú', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1756', '1131729', 'Nghĩa Bình', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1757', '1131731', 'Nghĩa Tân', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1758', '1131733', 'Nghĩa Hòa', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1759', '1131735', 'Nghĩa Thành', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1760', '1131737', 'Nghĩa Lâm', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1761', '1131739', 'Nghĩa Hùng', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1762', '1131741', 'Nghĩa Hải', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1763', '1131743', 'Nghĩa Thắng', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1764', '1131745', 'Nghĩa Lợi', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1765', '1131747', 'Nghĩa Phúc', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1766', '1131749', 'Nam Điền', '', '76', '0');
INSERT INTO `dm_xa` VALUES ('1767', '1131901', 'Thị trấn Yên Định', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1768', '1131903', 'Thị trấn Cồn', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1769', '1131905', 'Thị trấn Thịnh Long', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1770', '1131907', 'Hải Vân', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1771', '1131909', 'Hải Nam', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1772', '1131911', 'Hải Hà', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1773', '1131913', 'Hải Phúc', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1774', '1131915', 'Hải Lộc', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1775', '1131917', 'Hải Thanh', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1776', '1131919', 'Hải Hưng', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1777', '1131921', 'Hải Quang', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1778', '1131923', 'Hải Đông', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1779', '1131925', 'Hải Tây', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1780', '1131927', 'Hải Lý', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1781', '1131929', 'Hải Minh', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1782', '1131931', 'Hải Anh', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1783', '1131933', 'Hải Trung', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1784', '1131935', 'Hải Bắc', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1785', '1131937', 'Hải Phương', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1786', '1131939', 'Hải Tân', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1787', '1131941', 'Hải Sơn', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1788', '1131943', 'Hải Long', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1789', '1131945', 'Hải Đường', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1790', '1131947', 'Hải Xuân', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1791', '1131949', 'Hải Hòa', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1792', '1131951', 'Hải Châu', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1793', '1131953', 'Hải Phú', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1794', '1131955', 'Hải Cường', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1795', '1131957', 'Hải Ninh', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1796', '1131959', 'Hải An', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1797', '1131961', 'Hải Toàn', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1798', '1131963', 'Hải Phong', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1799', '1131965', 'Hải Giang', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1800', '1131967', 'Hải Triều', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1801', '1131969', 'Hải Chính', '', '77', '0');
INSERT INTO `dm_xa` VALUES ('1802', '1150101', 'Lê Hồng Phong', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1803', '1150103', 'Bồ Xuyên', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1804', '1150105', 'Đề Thám', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1805', '1150107', 'Kỳ Bá', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1806', '1150109', 'Quang Trung', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1807', '1150111', 'Phú Khánh', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1808', '1150113', 'Đông Hòa', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1809', '1150115', 'Hoàng Diệu', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1810', '1150117', 'Tiền Phong', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1811', '1150119', 'Phú Xuân', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1812', '1150121', 'Trần Lãm', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1813', '1150123', 'Vũ Chính', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1814', '1150125', 'Vũ Phúc', '', '78', '0');
INSERT INTO `dm_xa` VALUES ('1815', '1150301', 'Thị trấn Quỳnh Côi', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1816', '1150303', 'Quỳnh Lâm', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1817', '1150305', 'Quỳnh Hoàng', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1818', '1150307', 'Quỳnh Khê', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1819', '1150309', 'Quỳnh Ngọc', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1820', '1150311', 'Quỳnh Giao', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1821', '1150313', 'Quỳnh Hoa', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1822', '1150315', 'Quỳnh Thọ', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1823', '1150317', 'An Hiệp', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1824', '1150319', 'An Đồng', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1825', '1150321', 'An Khê', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1826', '1150323', 'An Thái', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1827', '1150325', 'An Cầu', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1828', '1150327', 'Quỳnh Minh', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1829', '1150329', 'An ấp', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1830', '1150331', 'Quỳnh Hội', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1831', '1150333', 'Quỳnh Hải', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1832', '1150335', 'Quỳnh Hồng', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1833', '1150337', 'Quỳnh Mỹ', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1834', '1150339', 'Quỳnh Sơn', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1835', '1150341', 'Quỳnh Nguyên', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1836', '1150343', 'Quỳnh Châu', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1837', '1150345', 'Quỳnh Bảo', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1838', '1150347', 'Quỳnh Hưng', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1839', '1150349', 'Quỳnh Trang', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1840', '1150351', 'Quỳnh Xá', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1841', '1150353', 'An Ninh', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1842', '1150355', 'Đông Hải', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1843', '1150357', 'An Quí', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1844', '1150359', 'An Vinh', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1845', '1150361', 'An Bài', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1846', '1150363', 'An Thanh', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1847', '1150365', 'An Mỹ', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1848', '1150367', 'An Lễ', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1849', '1150369', 'An Vũ', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1850', '1150371', 'An Dục', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1851', '1150373', 'An Tràng', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1852', '1150375', 'Đồng Tiến', '', '79', '0');
INSERT INTO `dm_xa` VALUES ('1853', '1150501', 'Thị trấn Hưng Hà', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1854', '1150503', 'Tân Lễ', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1855', '1150505', 'Phú Sơn', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1856', '1150507', 'Tiến Đức', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1857', '1150509', 'Hồng An', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1858', '1150511', 'Canh Tân', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1859', '1150513', 'Tân Hòa', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1860', '1150515', 'Cộng Hòa', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1861', '1150517', 'Hòa Tiến', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1862', '1150519', 'Tân Tiến', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1863', '1150521', 'Phúc Khánh', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1864', '1150523', 'Liên Hiệp', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1865', '1150525', 'Thái Hưng', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1866', '1150527', 'Thái Phương', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1867', '1150529', 'Minh Tân', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1868', '1150531', 'Điệp Nông', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1869', '1150533', 'Đoan Hùng', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1870', '1150535', 'Dân Chủ', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1871', '1150537', 'Duyên Hải', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1872', '1150539', 'Hùng Dũng', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1873', '1150541', 'Văn Cẩm', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1874', '1150543', 'Thống Nhất', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1875', '1150545', 'Minh Khai', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1876', '1150547', 'Hồng Lĩnh', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1877', '1150549', 'Kim Chung', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1878', '1150551', 'Chí Hòa', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1879', '1150553', 'Minh Hòa', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1880', '1150555', 'Văn Lang', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1881', '1150557', 'Độc Lập', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1882', '1150559', 'Hồng Minh', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1883', '1150561', 'Bình Lăng', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1884', '1150563', 'Tây Đô', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1885', '1150565', 'Đông Đô', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1886', '1150567', 'Bắc Sơn', '', '80', '0');
INSERT INTO `dm_xa` VALUES ('1887', '1150701', 'Thị trấn Diêm Điền', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1888', '1150703', 'Thụy Ninh', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1889', '1150705', 'Thụy Chính', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1890', '1150707', 'Thụy Dân', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1891', '1150709', 'Thụy Duyên', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1892', '1150711', 'Thụy Thanh', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1893', '1150713', 'Thụy Phong', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1894', '1150715', 'Thụy Sơn', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1895', '1150717', 'Thụy Phúc', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1896', '1150719', 'Thụy Hưng', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1897', '1150721', 'Thụy Việt', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1898', '1150723', 'Thụy Dương', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1899', '1150725', 'Thụy Văn', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1900', '1150727', 'Thụy Bình', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1901', '1150729', 'Thụy Liên', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1902', '1150731', 'Thụy Hà', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1903', '1150733', 'Thụy Lương', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1904', '1150735', 'Thụy Quỳnh', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1905', '1150737', 'Thụy Trình', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1906', '1150739', 'Hồng Quỳnh', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1907', '1150741', 'Thụy Hồng', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1908', '1150743', 'Thụy Dũng', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1909', '1150745', 'Thụy Tân', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1910', '1150747', 'Thụy An', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1911', '1150749', 'Thụy Hải', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1912', '1150751', 'Thụy Xuân', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1913', '1150753', 'Thụy Trường', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1914', '1150755', 'Thái Giang', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1915', '1150757', 'Thái Sơn', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1916', '1150759', 'Thái Hà', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1917', '1150761', 'Thái Phúc', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1918', '1150763', 'Thái Dương', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1919', '1150765', 'Thái Hồng', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1920', '1150767', 'Thái Thuần', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1921', '1150769', 'Thái Thành', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1922', '1150771', 'Thái Thịnh', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1923', '1150773', 'Thái Thọ', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1924', '1150775', 'Thái Học', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1925', '1150777', 'Mỹ Lộc', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1926', '1150779', 'Thái Tân', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1927', '1150781', 'Thái Đô', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1928', '1150783', 'Thái Hưng', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1929', '1150785', 'Thái An', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1930', '1150787', 'Thái Nguyên', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1931', '1150789', 'Thái Thuỷ', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1932', '1150791', 'Thái Xuyên', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1933', '1150793', 'Thái Thượng', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1934', '1150795', 'Thái Hoà', '', '81', '0');
INSERT INTO `dm_xa` VALUES ('1935', '1150901', 'Thị trấn Đông Hưng', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1936', '1150903', 'An Châu', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1937', '1150905', 'Đô Lương', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1938', '1150907', 'Liên Giang', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1939', '1150909', 'Đông Phương', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1940', '1150911', 'Đông Sơn', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1941', '1150913', 'Lô Giang', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1942', '1150915', 'Minh Tân', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1943', '1150917', 'Mê Linh', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1944', '1150919', 'Phú Lương', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1945', '1150921', 'Đông La', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1946', '1150923', 'Đông Cường', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1947', '1150925', 'Đông Xá', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1948', '1150927', 'Hợp Tiến', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1949', '1150929', 'Phong Châu', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1950', '1150931', 'Nguyên Xá', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1951', '1150933', 'Hồng Việt', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1952', '1150935', 'Thăng Long', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1953', '1150937', 'Chương Dương', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1954', '1150939', 'Đông Hợp', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1955', '1150941', 'Đông Hà', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1956', '1150943', 'Đông Giang', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1957', '1150945', 'Đông Kinh', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1958', '1150947', 'Hồng Châu', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1959', '1150949', 'Hoa Lư', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1960', '1150951', 'Minh Châu', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1961', '1150953', 'Phú Châu', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1962', '1150955', 'Đông Các', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1963', '1150957', 'Bạch Đằng', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1964', '1150959', 'Hoa Nam', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1965', '1150961', 'Đồng Phú', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1966', '1150963', 'Trọng Quan', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1967', '1150965', 'Đông Động', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1968', '1150967', 'Đông Vinh', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1969', '1150969', 'Đông Tân', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1970', '1150971', 'Đông Xuân', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1971', '1150973', 'Đông Quang', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1972', '1150975', 'Hồng Giang', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1973', '1150977', 'Đông Dương', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1974', '1150979', 'Đông Phong', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1975', '1150981', 'Đông á', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1976', '1150983', 'Đông Lĩnh', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1977', '1150985', 'Đông Hoàng', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1978', '1150987', 'Đông Thọ', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1979', '1150989', 'Đông Mỹ', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1980', '1150991', 'Đông Huy', '', '82', '0');
INSERT INTO `dm_xa` VALUES ('1981', '1151101', 'Thị trấn Vũ Thư', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1982', '1151103', 'Hồng Lý', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1983', '1151105', 'Đồng Thanh', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1984', '1151107', 'Xuân Hòa', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1985', '1151109', 'Hiệp Hòa', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1986', '1151111', 'Phúc Thành', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1987', '1151113', 'Tân Phong', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1988', '1151115', 'Song Lãng', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1989', '1151117', 'Tân Hòa', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1990', '1151119', 'Việt Hùng', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1991', '1151121', 'Minh Lãng', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1992', '1151123', 'Tân Bình', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1993', '1151125', 'Minh Khai', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1994', '1151127', 'Dũng Nghĩa', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1995', '1151129', 'Minh Quang', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1996', '1151131', 'Tam Quang', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1997', '1151133', 'Tân Lập', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1998', '1151135', 'Tự Tân', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('1999', '1151137', 'Bách Thuận', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2000', '1151139', 'Song An', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2001', '1151141', 'Hòa Bình', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2002', '1151143', 'Trung An', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2003', '1151145', 'Vũ Hội', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2004', '1151147', 'Nguyên Xá', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2005', '1151149', 'Việt Thuận', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2006', '1151151', 'Vũ Vinh', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2007', '1151153', 'Vũ Đoài', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2008', '1151155', 'Vũ Tiến', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2009', '1151157', 'Vũ Vân', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2010', '1151159', 'Duy Nhất', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2011', '1151161', 'Hồng Phong', '', '83', '0');
INSERT INTO `dm_xa` VALUES ('2012', '1151301', 'Thị trấn Kiến Xương', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2013', '1151303', 'Vũ Đông', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2014', '1151305', 'Vũ Tây', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2015', '1151307', 'An Bình', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2016', '1151309', 'Vũ Lạc', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2017', '1151311', 'Vũ Sơn', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2018', '1151313', 'Vũ Lễ', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2019', '1151315', 'Vũ An', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2020', '1151317', 'Trà Giang', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2021', '1151319', 'Hồng Thái', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2022', '1151321', 'Quốc Tuấn', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2023', '1151323', 'Bình Nguyên', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2024', '1151325', 'Quyết Tiến', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2025', '1151327', 'Lê Lợi', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2026', '1151329', 'Nam Cao', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2027', '1151331', 'Thanh Tân', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2028', '1151333', 'Đình Phùng', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2029', '1151335', 'Vũ Ninh', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2030', '1151337', 'Vũ Quí', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2031', '1151339', 'Vũ Trung', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2032', '1151341', 'Vũ Thắng', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2033', '1151343', 'Vũ Hòa', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2034', '1151345', 'Vũ Công', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2035', '1151347', 'Vũ Bình', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2036', '1151349', 'Quang Bình', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2037', '1151351', 'Quang Lịch', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2038', '1151353', 'Bình Minh', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2039', '1151355', 'Thượng Hiền', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2040', '1151357', 'An Bồi', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2041', '1151359', 'Hòa Bình', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2042', '1151361', 'Tán Thuật', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2043', '1151363', 'Quang Minh', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2044', '1151365', 'Quang Trung', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2045', '1151367', 'Quang Hưng', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2046', '1151369', 'Minh Hưng', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2047', '1151371', 'Bình Thanh', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2048', '1151373', 'Nam Bình', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2049', '1151375', 'Minh Tân', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2050', '1151377', 'Bình Định', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2051', '1151379', 'Hồng Tiến', '', '84', '0');
INSERT INTO `dm_xa` VALUES ('2052', '1151501', 'Thị trấn Tiền Hải', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2053', '1151503', 'Đông Hải', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2054', '1151505', 'Đông Trà', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2055', '1151507', 'Đông Long', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2056', '1151509', 'Đông Quí', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2057', '1151511', 'Vũ Lăng', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2058', '1151513', 'Đông Xuyên', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2059', '1151515', 'Tây Lương', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2060', '1151517', 'Tây Ninh', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2061', '1151519', 'Đông Trung', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2062', '1151521', 'Đông Hoàng', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2063', '1151523', 'Đông Minh', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2064', '1151525', 'Tây An', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2065', '1151527', 'Đông Phong', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2066', '1151529', 'An Ninh', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2067', '1151531', 'Tây Sơn', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2068', '1151533', 'Đông Cơ', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2069', '1151535', 'Tây Giang', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2070', '1151537', 'Đông Lâm', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2071', '1151539', 'Phương Công', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2072', '1151541', 'Tây Phong', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2073', '1151543', 'Tây Tiến', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2074', '1151545', 'Nam Cường', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2075', '1151547', 'Vân Trường', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2076', '1151549', 'Nam Chính', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2077', '1151551', 'Nam Thắng', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2078', '1151553', 'Nam Thịnh', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2079', '1151555', 'Bắc Hải', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2080', '1151557', 'Nam Hà', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2081', '1151559', 'Nam Thanh', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2082', '1151561', 'Nam Trung', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2083', '1151563', 'Nam Hồng', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2084', '1151565', 'Nam Hưng', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2085', '1151567', 'Nam Hải', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2086', '1151569', 'Nam Phú', '', '85', '0');
INSERT INTO `dm_xa` VALUES ('2087', '1170101', 'Tân Thành', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2088', '1170103', 'Đông Thành', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2089', '1170105', 'Vân Giang', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2090', '1170107', 'Thanh Bình', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2091', '1170109', 'Phúc Thành', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2092', '1170111', 'Nam Thành', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2093', '1170113', 'Nam Bình', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2094', '1170115', 'Bích Đào', '', '86', '0');
INSERT INTO `dm_xa` VALUES ('2095', '1170301', 'Bắc Sơn', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2096', '1170303', 'Trung Sơn', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2097', '1170305', 'Nam Sơn', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2098', '1170307', 'Yên Sơn', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2099', '1170309', 'Yên Bình', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2100', '1170311', 'Đông Sơn', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2101', '1170313', 'Quang Sơn', '', '87', '0');
INSERT INTO `dm_xa` VALUES ('2102', '1170501', 'Thị trấn Nho Quan', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2103', '1170503', 'Xích Thổ', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2104', '1170505', 'Gia Lâm', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2105', '1170507', 'Thạch Bình', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2106', '1170509', 'Gia Sơn', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2107', '1170511', 'Gia Thủy', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2108', '1170513', 'Gia Tường', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2109', '1170515', 'Đức Long', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2110', '1170517', 'Phú Sơn', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2111', '1170519', 'Lạc Vân', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2112', '1170521', 'Đồng Phong', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2113', '1170523', 'Lạng Phong', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2114', '1170525', 'Cúc Phương', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2115', '1170527', 'Yên Quang', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2116', '1170529', 'Văn Phong', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2117', '1170531', 'Thượng Hòa', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2118', '1170533', 'Văn Phương', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2119', '1170535', 'Văn Phú', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2120', '1170537', 'Thanh Lạc', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2121', '1170539', 'Sơn Thành', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2122', '1170541', 'Sơn Lai', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2123', '1170543', 'Kỳ Phú', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2124', '1170545', 'Phú Lộc', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2125', '1170547', 'Quỳnh Lưu', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2126', '1170549', 'Sơn Hà', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2127', '1170551', 'Quảng Lạc', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2128', '1170553', 'Phú Long', '', '88', '0');
INSERT INTO `dm_xa` VALUES ('2129', '1170701', 'Thị trấn Me', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2130', '1170703', 'Gia Hưng', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2131', '1170705', 'Gia Hòa', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2132', '1170707', 'Liên Sơn', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2133', '1170709', 'Gia Thanh', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2134', '1170711', 'Gia Vân', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2135', '1170713', 'Gia Xuân', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2136', '1170715', 'Gia Phú', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2137', '1170717', 'Gia Vượng', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2138', '1170719', 'Gia Thịnh', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2139', '1170721', 'Gia Phương', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2140', '1170723', 'Gia Lập', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2141', '1170725', 'Gia Tân', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2142', '1170727', 'Gia Trấn', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2143', '1170729', 'Gia Thắng', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2144', '1170731', 'Gia Trung', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2145', '1170733', 'Gia Minh', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2146', '1170735', 'Gia Lạc', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2147', '1170737', 'Gia Tiến', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2148', '1170739', 'Gia Sinh', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2149', '1170741', 'Gia Phong', '', '89', '0');
INSERT INTO `dm_xa` VALUES ('2150', '1170901', 'Ninh Khánh', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2151', '1170903', 'Ninh Giang', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2152', '1170905', 'Trường Yên', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2153', '1170907', 'Ninh Khang', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2154', '1170909', 'Ninh Mỹ', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2155', '1170911', 'Ninh Hòa', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2156', '1170913', 'Ninh Nhất', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2157', '1170915', 'Ninh Xuân', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2158', '1170917', 'Ninh Hải', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2159', '1170919', 'Ninh Tiến', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2160', '1170921', 'Ninh Sơn', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2161', '1170923', 'Ninh Phúc', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2162', '1170925', 'Ninh Phong', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2163', '1170927', 'Ninh Thắng', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2164', '1170929', 'Ninh Vân', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2165', '1170931', 'Ninh An', '', '90', '0');
INSERT INTO `dm_xa` VALUES ('2166', '1171101', 'Thị trấn Yên Thịnh', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2167', '1171103', 'Khánh Thượng', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2168', '1171105', 'Khánh Dương', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2169', '1171107', 'Khánh Thịnh', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2170', '1171109', 'Yên Phong', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2171', '1171111', 'Yên Phú', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2172', '1171113', 'Yên Hòa', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2173', '1171115', 'Yên Thắng', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2174', '1171117', 'Yên Từ', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2175', '1171119', 'Yên Mỹ', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2176', '1171121', 'Yên Nhân', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2177', '1171123', 'Yên Thành', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2178', '1171125', 'Yên Mạc', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2179', '1171127', 'Yên Đồng', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2180', '1171129', 'Yên Thái', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2181', '1171131', 'Yên Lâm', '', '91', '0');
INSERT INTO `dm_xa` VALUES ('2182', '1171301', 'Thị trấn Yên Ninh', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2183', '1171303', 'Khánh Tiên', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2184', '1171305', 'Khánh Phú', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2185', '1171307', 'Khánh Hòa', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2186', '1171309', 'Khánh An', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2187', '1171311', 'Khánh Lợi', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2188', '1171313', 'Khánh Thiện', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2189', '1171315', 'Khánh Cường', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2190', '1171317', 'Khánh Trung', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2191', '1171319', 'Khánh Cư', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2192', '1171321', 'Khánh Hải', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2193', '1171323', 'Khánh Mậu', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2194', '1171325', 'Khánh Vân', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2195', '1171327', 'Khánh Ninh', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2196', '1171329', 'Khánh Hội', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2197', '1171331', 'Khánh Nhạc', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2198', '1171333', 'Khánh Công', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2199', '1171335', 'Khánh Thành', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2200', '1171337', 'Khánh Thủy', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2201', '1171339', 'Khánh Hồng', '', '92', '0');
INSERT INTO `dm_xa` VALUES ('2202', '1171501', 'Thị trấn Phát Diệm', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2203', '1171503', 'Thị trấn Bình Minh', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2204', '1171505', 'Xuân Thiện', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2205', '1171507', 'Chính Tâm', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2206', '1171509', 'Hồi Ninh', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2207', '1171511', 'Chất Bình', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2208', '1171513', 'Kim Định', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2209', '1171515', 'Ân Hòa', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2210', '1171517', 'Hùng Tiến', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2211', '1171519', 'Như Hòa', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2212', '1171521', 'Quang Thiện', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2213', '1171523', 'Yên Mật', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2214', '1171525', 'Đồng Hướng', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2215', '1171527', 'Kim Chính', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2216', '1171529', 'Thượng Kiệm', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2217', '1171531', 'Lưu Phương', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2218', '1171533', 'Tân Thành', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2219', '1171535', 'Yên Lộc', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2220', '1171537', 'Lai Thành', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2221', '1171539', 'Định Hóa', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2222', '1171541', 'Văn Hải', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2223', '1171543', 'Kim Tân', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2224', '1171545', 'Kim Mỹ', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2225', '1171547', 'Cồn Thoi', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2226', '1171549', 'Kim Hải', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2227', '1171551', 'Kim Trung', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2228', '1171553', 'Kim Đông', '', '93', '0');
INSERT INTO `dm_xa` VALUES ('2229', '2010101', 'Trần Phú', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2230', '2010103', 'Quang Trung', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2231', '2010105', 'Nguyễn Trãi', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2232', '2010107', 'Minh Khai', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2233', '2010109', 'Ngọc Đường', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2234', '2010111', 'Kim Thạch', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2235', '2010113', 'Phú Linh', '', '94', '0');
INSERT INTO `dm_xa` VALUES ('2236', '2010301', 'Thị trấn Phó Bảng', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2237', '2010303', 'Đồng Văn', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2238', '2010305', 'Lũng Cú', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2239', '2010307', 'Má Lé', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2240', '2010309', 'Lũng Táo', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2241', '2010311', 'Thài Phìn Tủng', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2242', '2010313', 'Phố Là', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2243', '2010315', 'Xà Phìn', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2244', '2010317', 'Sủng Là', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2245', '2010319', 'Tả Phìn', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2246', '2010321', 'Sính Lủng', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2247', '2010323', 'Tả Lủng', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2248', '2010325', 'Phố Cáo', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2249', '2010327', 'Sảng Tủng', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2250', '2010329', 'Lũng Thầu', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2251', '2010331', 'Hố Quáng Phìn', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2252', '2010333', 'Vần Chải', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2253', '2010335', 'Lũng Phìn', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2254', '2010337', 'Sủng Trái', '', '95', '0');
INSERT INTO `dm_xa` VALUES ('2255', '2010501', 'Mèo Vạc', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2256', '2010503', 'Thượng Phùng', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2257', '2010505', 'Pải Lủng', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2258', '2010507', 'Pả Vi', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2259', '2010509', 'Xín Cái', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2260', '2010511', 'Sủng Chà', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2261', '2010513', 'Giàng Chu Phìn', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2262', '2010515', 'Sủng Máng', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2263', '2010517', 'Cán Chu Phìn', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2264', '2010519', 'Sơn Vĩ', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2265', '2010521', 'Lũng Chinh', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2266', '2010523', 'Tát Ngà', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2267', '2010525', 'Lũng Pù', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2268', '2010527', 'Nậm Ban', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2269', '2010529', 'Khâu Vai', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2270', '2010531', 'Niêm Sơn', '', '96', '0');
INSERT INTO `dm_xa` VALUES ('2271', '2010701', 'Yên Minh', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2272', '2010703', 'Phú Lũng', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2273', '2010705', 'Thắng Mố', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2274', '2010707', 'Bạch Đích', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2275', '2010709', 'Sủng Tráng', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2276', '2010711', 'Sủng Thài', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2277', '2010713', 'Na Khê', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2278', '2010715', 'Lao Và Chải', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2279', '2010717', 'Mậu Duệ', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2280', '2010719', 'Ngam La', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2281', '2010721', 'Mậu Long', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2282', '2010723', 'Ngọc Long', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2283', '2010725', 'Đường Thượng', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2284', '2010727', 'Lũng Hồ', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2285', '2010729', 'Du Tiến', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2286', '2010731', 'Du Già', '', '97', '0');
INSERT INTO `dm_xa` VALUES ('2287', '2010901', 'Quản Bạ', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2288', '2010903', 'Bát Đại Sơn', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2289', '2010905', 'Nghĩa Thuận', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2290', '2010907', 'Cán Tỷ', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2291', '2010909', 'Cao Mã Pờ', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2292', '2010911', 'Thanh Vân', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2293', '2010913', 'Tùng Vài', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2294', '2010915', 'Đông Hà', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2295', '2010917', 'Lùng Tám', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2296', '2010919', 'Quyết Tiến', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2297', '2010921', 'Tả Ván', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2298', '2010923', 'Thái An', '', '98', '0');
INSERT INTO `dm_xa` VALUES ('2299', '2011101', 'Yên Phú', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2300', '2011103', 'Minh Sơn', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2301', '2011105', 'Giáp Trung', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2302', '2011107', 'Yên Phong', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2303', '2011109', 'Yên Định', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2304', '2011111', 'Lạc Nông', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2305', '2011113', 'Phú Nam', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2306', '2011115', 'Minh Ngọc', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2307', '2011117', 'Thượng Tân', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2308', '2011119', 'Yên Cường', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2309', '2011121', 'Đường Hồng', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2310', '2011123', 'Đường Âm', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2311', '2011125', 'Phiêng Luông', '', '99', '0');
INSERT INTO `dm_xa` VALUES ('2312', '2011301', 'Vinh Quang', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2313', '2011303', 'Bản Máy', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2314', '2011305', 'Thàng Tín', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2315', '2011307', 'Thèn Chu Phìn', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2316', '2011309', 'Bản Phùng', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2317', '2011311', 'Chiến Phố', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2318', '2011313', 'Đản Ván', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2319', '2011315', 'Pố Lồ', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2320', '2011317', 'Túng Sán', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2321', '2011319', 'Tụ Nhân', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2322', '2011321', 'Tân Tiến', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2323', '2011323', 'Pờ Ly Ngài', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2324', '2011325', 'Ngàm Đăng Vài', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2325', '2011327', 'Bản Nhùng', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2326', '2011329', 'Nàng Đôn', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2327', '2011331', 'Sán Xả Hồ', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2328', '2011333', 'Bản Luốc', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2329', '2011335', 'Tả Sử Choóng', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2330', '2011337', 'Bản Péo', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2331', '2011339', 'Nậm Dịch', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2332', '2011341', 'Hồ Thầu', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2333', '2011343', 'Nam Sơn', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2334', '2011345', 'Thông Nguyên', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2335', '2011347', 'Nậm Tỵ', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2336', '2011349', 'Nậm Khòa', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2337', '2011351', 'Tiên Nguyên', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2338', '2011353', 'Xuân Minh', '', '100', '0');
INSERT INTO `dm_xa` VALUES ('2339', '2011501', 'Thị trấn Vị Xuyên', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2340', '2011503', 'TT Nông Trường Việt Lâm', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2341', '2011505', 'Minh Tân', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2342', '2011507', 'Thuận Hoà', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2343', '2011509', 'Thanh Thủy', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2344', '2011511', 'Thanh Đức', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2345', '2011513', 'Tùng Bá', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2346', '2011515', 'Phong Quang', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2347', '2011517', 'Xín Chải', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2348', '2011519', 'Phương Tiến', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2349', '2011521', 'Lao Chải', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2350', '2011523', 'Phương Độ', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2351', '2011525', 'Phương Thiện', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2352', '2011527', 'Cao Bồ', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2353', '2011529', 'Đạo Đức', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2354', '2011531', 'Linh Hồ', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2355', '2011533', 'Thượng Sơn', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2356', '2011535', 'Ngọc Linh', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2357', '2011537', 'Việt Lâm', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2358', '2011539', 'Ngọc Minh', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2359', '2011541', 'Trung Thành', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2360', '2011543', 'Quảng Ngần', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2361', '2011545', 'Bạch Ngọc', '', '101', '0');
INSERT INTO `dm_xa` VALUES ('2362', '2011701', 'Cốc Pài', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2363', '2011703', 'Nàn Xỉn', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2364', '2011705', 'Bản Díu', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2365', '2011707', 'Chí Cà', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2366', '2011709', 'Xín Mần', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2367', '2011711', 'Trung Thịnh', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2368', '2011713', 'Thèn Phàng', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2369', '2011715', 'Ngán Chiên', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2370', '2011717', 'Pà Vầy Sủ', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2371', '2011719', 'Cốc Rế', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2372', '2011721', 'Thu Tà', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2373', '2011723', 'Nàn Ma', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2374', '2011725', 'Tả Nhìu', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2375', '2011727', 'Bản Ngò', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2376', '2011729', 'Chế Là', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2377', '2011731', 'Nấm Dẩn', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2378', '2011733', 'Quảng Nguyên', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2379', '2011735', 'Nà Chì', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2380', '2011737', 'Khuôn Lùng', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2381', '2011739', 'Tân Nam', '', '102', '0');
INSERT INTO `dm_xa` VALUES ('2382', '2011901', 'Thị trấn Việt Quang', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2383', '2011903', 'Thị trấn Vĩnh Tuy', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2384', '2011905', 'Tân Lập', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2385', '2011907', 'Tân Thành', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2386', '2011909', 'Đồng Tâm', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2387', '2011911', 'Thượng Bình', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2388', '2011913', 'Tân Quang', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2389', '2011915', 'Việt Vinh', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2390', '2011917', 'Bằng Hành', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2391', '2011919', 'Kim Ngọc', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2392', '2011921', 'Bản Rịa', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2393', '2011923', 'Yên Bình', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2394', '2011925', 'Hữu Sản', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2395', '2011927', 'Tân Trịnh', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2396', '2011929', 'Quang Minh', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2397', '2011931', 'Liên Hiệp', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2398', '2011933', 'Vô Điếm', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2399', '2011935', 'Việt Hồng', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2400', '2011937', 'Bằng Lang', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2401', '2011939', 'Yên Hà', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2402', '2011941', 'Hùng An', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2403', '2011943', 'Đức Xuân', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2404', '2011945', 'Hương Sơn', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2405', '2011947', 'Xuân Giang', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2406', '2011949', 'Tiên Kiều', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2407', '2011951', 'Tiên Yên', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2408', '2011953', 'Vĩnh Hảo', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2409', '2011955', 'Nà Khương', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2410', '2011957', 'Vĩnh Phúc', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2411', '2011959', 'Vĩ Thượng', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2412', '2011961', 'Đồng Yên', '', '103', '0');
INSERT INTO `dm_xa` VALUES ('2413', '2030101', 'Hợp Giang', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2414', '2030103', 'Tân Giang', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2415', '2030105', 'Sông Hiến', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2416', '2030107', 'Sông Bằng', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2417', '2030109', 'Ngọc Xuân', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2418', '2030111', 'Hoà Chung', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2419', '2030113', 'Duyệt Trung', '', '104', '0');
INSERT INTO `dm_xa` VALUES ('2420', '2030301', 'Thị trấn Bảo Lạc', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2421', '2030303', 'Đức Hạnh', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2422', '2030305', 'Cốc Pàng', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2423', '2030307', 'Thượng Hà', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2424', '2030309', 'Cô Ba', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2425', '2030311', 'Khánh Xuân', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2426', '2030313', 'Xuân Trường', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2427', '2030315', 'Lý Bôn', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2428', '2030317', 'Bảo Toàn', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2429', '2030319', 'Vĩnh Quang', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2430', '2030321', 'Hồng Trị', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2431', '2030323', 'Phan Thanh', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2432', '2030325', 'Hồng An', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2433', '2030327', 'Nam Quang', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2434', '2030329', 'Quảng Lâm', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2435', '2030331', 'Tân Việt', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2436', '2030333', 'Mông Ân', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2437', '2030335', 'Vĩnh Phong', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2438', '2030337', 'Hưng Đạo', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2439', '2030339', 'Huy Giáp', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2440', '2030341', 'Thái Học', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2441', '2030343', 'Sơn Lộ', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2442', '2030345', 'Đình Phùng', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2443', '2030347', 'Yên Thổ', '', '105', '0');
INSERT INTO `dm_xa` VALUES ('2444', '2030501', 'Xuân Hoà', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2445', '2030503', 'Trường Hà', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2446', '2030505', 'Kéo Yên', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2447', '2030507', 'Lũng Nặm', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2448', '2030509', 'Vân An', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2449', '2030511', 'Cải Viên', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2450', '2030513', 'Nà Sác', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2451', '2030515', 'Nội Thôn', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2452', '2030517', 'Sóc Hà', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2453', '2030519', 'Thượng Thôn', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2454', '2030521', 'Tổng Cọt', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2455', '2030523', 'Quý Quân', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2456', '2030525', 'Hồng Sĩ', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2457', '2030527', 'Sĩ Hai', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2458', '2030529', 'Đào Ngạn', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2459', '2030531', 'Phù Ngọc', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2460', '2030533', 'Mã Ba', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2461', '2030535', 'Hạ Thôn', '', '107', '0');
INSERT INTO `dm_xa` VALUES ('2462', '2030701', 'Đa Thông', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2463', '2030703', 'Cần Yên', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2464', '2030705', 'Vị Quang', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2465', '2030707', 'Lương Thông', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2466', '2030709', 'Ngọc Động', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2467', '2030711', 'Yên Sơn', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2468', '2030713', 'Lương Can', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2469', '2030715', 'Thanh Long', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2470', '2030717', 'Bình Lãng', '', '108', '0');
INSERT INTO `dm_xa` VALUES ('2471', '2030901', 'Hùng Quốc', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2472', '2030903', 'Cô Mười', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2473', '2030905', 'Tri Phương', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2474', '2030907', 'Quang Hán', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2475', '2030909', 'Quang Vinh', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2476', '2030911', 'Quang Trung', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2477', '2030913', 'Lưu Ngọc', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2478', '2030915', 'Xuân Nội', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2479', '2030917', 'Cao Chương', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2480', '2030919', 'Quốc Toản', '', '109', '0');
INSERT INTO `dm_xa` VALUES ('2481', '2031101', 'Thị trấn Trùng Khánh', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2482', '2031103', 'Lăng Yên', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2483', '2031105', 'Ngọc Chung', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2484', '2031107', 'Phong Nậm', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2485', '2031109', 'Ngọc Khê', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2486', '2031111', 'Đình Phong', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2487', '2031113', 'Chí Viễn', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2488', '2031115', 'Đàm Thuỷ', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2489', '2031117', 'Lăng Hiếu', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2490', '2031119', 'Khâm Thành', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2491', '2031121', 'Đình Minh', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2492', '2031123', 'Phong Châu', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2493', '2031125', 'Cảnh Tiên', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2494', '2031127', 'Trung Phúc', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2495', '2031129', 'Đức Hồng', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2496', '2031131', 'Cao Thăng', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2497', '2031133', 'Thông Hoè', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2498', '2031135', 'Đoài Côn', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2499', '2031137', 'Thân Giáp', '', '110', '0');
INSERT INTO `dm_xa` VALUES ('2500', '2031301', 'Thị trấn Nguyên Bình', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2501', '2031303', 'Thị trấn Tĩnh Túc', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2502', '2031305', 'Yên Lạc', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2503', '2031307', 'Ca Thành', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2504', '2031309', 'Triệu Nguyên', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2505', '2031311', 'Vũ Nông', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2506', '2031313', 'Thái Học', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2507', '2031315', 'Thể Dục', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2508', '2031317', 'Bắc Hợp', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2509', '2031319', 'Minh Tâm', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2510', '2031321', 'Minh Thanh', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2511', '2031323', 'Lang Môn', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2512', '2031325', 'Mai Long', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2513', '2031327', 'Phan Thanh', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2514', '2031329', 'Quang Thành', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2515', '2031331', 'Tam Kim', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2516', '2031333', 'Hoa Thám', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2517', '2031335', 'Thành Công', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2518', '2031337', 'Hưng Đạo', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2519', '2031339', 'Thịnh Vượng', '', '111', '0');
INSERT INTO `dm_xa` VALUES ('2520', '2031501', 'Thị trấn Nước Hai', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2521', '2031503', 'Dân Chủ', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2522', '2031505', 'Nam Tuấn', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2523', '2031507', 'Đại Tiến', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2524', '2031509', 'Đức Xuân', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2525', '2031511', 'Đức Long', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2526', '2031513', 'Trương Lương', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2527', '2031515', 'Bình Long', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2528', '2031517', 'Bế Triều', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2529', '2031519', 'Ngũ Lão', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2530', '2031521', 'Công Trừng', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2531', '2031523', 'Hồng Việt', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2532', '2031525', 'Vĩnh Quang', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2533', '2031527', 'Nguyễn Huệ', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2534', '2031529', 'Hoàng Tung', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2535', '2031531', 'Hưng Đạo', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2536', '2031533', 'Đề Thám', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2537', '2031535', 'Quang Trung', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2538', '2031537', 'Trương Vương', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2539', '2031539', 'Bình Dương', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2540', '2031541', 'Bạch Đằng', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2541', '2031543', 'Lê Chung', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2542', '2031545', 'Chu Trinh', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2543', '2031547', 'Hà Trì', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2544', '2031549', 'Hồng Nam', '', '112', '0');
INSERT INTO `dm_xa` VALUES ('2545', '2031701', 'Thị trấn Quảng Uyên', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2546', '2031703', 'Phi Hải', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2547', '2031705', 'Quảng Hưng', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2548', '2031707', 'Bình Lăng', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2549', '2031709', 'Độc Lập', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2550', '2031711', 'Quốc Phong', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2551', '2031713', 'Quốc Dân', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2552', '2031715', 'Đoài Khôn', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2553', '2031717', 'Phúc Sen', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2554', '2031719', 'Chí Thảo', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2555', '2031721', 'Cai Bộ', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2556', '2031723', 'Tự Do', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2557', '2031725', 'Ngọc Động', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2558', '2031727', 'Hồng Định', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2559', '2031729', 'Hồng Quang', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2560', '2031731', 'Hồng Đại', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2561', '2031733', 'Triệu Âủ', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2562', '2031735', 'Hoàng Hải', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2563', '2031737', 'Hạnh Phúc', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2564', '2031739', 'Lương Thiện', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2565', '2031741', 'Cách Linh', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2566', '2031743', 'Đại Sơn', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2567', '2031745', 'Tiên Thành', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2568', '2031747', 'Mỹ Hưng', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2569', '2031749', 'Tà Lùng', '', '113', '0');
INSERT INTO `dm_xa` VALUES ('2570', '2031901', 'Thanh Nhật', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2571', '2031903', 'Minh Long', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2572', '2031905', 'Thắng Lợi', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2573', '2031907', 'Lý Quốc', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2574', '2031909', 'Đồng Loan', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2575', '2031911', 'Đức Quang', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2576', '2031913', 'Kim Loan', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2577', '2031915', 'An Lạc', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2578', '2031917', 'Quang Long', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2579', '2031919', 'Vinh Quý', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2580', '2031921', 'Việt Chu', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2581', '2031923', 'Thái Đức', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2582', '2031925', 'Cô Ngân', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2583', '2031927', 'Thị Hoa', '', '114', '0');
INSERT INTO `dm_xa` VALUES ('2584', '2032101', 'Lê Lai', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2585', '2032103', 'Canh Tân', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2586', '2032105', 'Kim Đồng', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2587', '2032107', 'Minh Khai', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2588', '2032109', 'Đức Thông', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2589', '2032111', 'Quang Trọng', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2590', '2032113', 'Thái Cường', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2591', '2032115', 'Vân Trình', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2592', '2032117', 'Thị Ngân', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2593', '2032119', 'Thuỵ Hùng', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2594', '2032121', 'Đức Long', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2595', '2032123', 'Trọng Con', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2596', '2032125', 'Thượng Pha', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2597', '2032127', 'Danh Sỹ', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2598', '2032129', 'Lê Lợi', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2599', '2032131', 'Đức Xuân', '', '115', '0');
INSERT INTO `dm_xa` VALUES ('2600', '2050101', 'Duyên Hải', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2601', '2050103', 'Lào Cai', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2602', '2050105', 'Cốc Lếu', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2603', '2050107', 'Phố Mới', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2604', '2050109', 'Kim Tân', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2605', '2050111', 'Vạn Hoà', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2606', '2050113', 'Đồng Tuyển', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2607', '2050115', 'Bắc Cường', '', '116', '0');
INSERT INTO `dm_xa` VALUES ('2608', '2050301', 'Bắc Lệnh', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2609', '2050303', 'Pom Hán', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2610', '2050305', 'Xuân Tăng', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2611', '2050307', 'Thống Nhất', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2612', '2050309', 'Nam Cường', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2613', '2050311', 'Cam Đường', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2614', '2050313', 'Tả Phời', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2615', '2050315', 'Hợp Thành', '', '117', '0');
INSERT INTO `dm_xa` VALUES ('2616', '2050501', 'Mường Khương', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2617', '2050503', 'Pha Long', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2618', '2050505', 'Tả Ngải Chồ', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2619', '2050507', 'Tung Chung Phố', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2620', '2050509', 'Dìn Chin', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2621', '2050511', 'Tả Gia Khâu', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2622', '2050513', 'Nậm Chảy', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2623', '2050515', 'Nấm Lư', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2624', '2050517', 'Lùng Khấu Nhin', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2625', '2050519', 'Thanh Bình', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2626', '2050521', 'Cao Sơn', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2627', '2050523', 'Lùng Vai', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2628', '2050525', 'Bản Lầu', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2629', '2050527', 'La Pan Tẩn', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2630', '2050529', 'Tả Thàng', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2631', '2050531', 'Bản Sen', '', '118', '0');
INSERT INTO `dm_xa` VALUES ('2632', '2050701', 'Thị trấn Bát Xát', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2633', '2050703', 'A Mú Sung', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2634', '2050705', 'Nậm Chạc', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2635', '2050707', 'A Lù', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2636', '2050709', 'Trịnh Tường', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2637', '2050711', 'Ngải Thầu', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2638', '2050713', 'Y Tý', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2639', '2050715', 'Cốc Mỳ', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2640', '2050717', 'Dền Sáng', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2641', '2050719', 'Dền Thàng', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2642', '2050721', 'Sàng Ma Sáo', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2643', '2050723', 'Bản Vược', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2644', '2050725', 'Mường Vi', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2645', '2050727', 'Bản Xèo', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2646', '2050729', 'Bản Qua', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2647', '2050731', 'Mường Hum', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2648', '2050733', 'Trung Lèng Hồ', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2649', '2050735', 'Pa Cheo', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2650', '2050737', 'Nậm Pung', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2651', '2050739', 'Quang Kim', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2652', '2050741', 'Phìn Ngan', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2653', '2050743', 'Cốc San', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2654', '2050745', 'Tòng Sành', '', '119', '0');
INSERT INTO `dm_xa` VALUES ('2655', '2050901', 'Thị trấn Bắc Hà', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2656', '2050903', 'Nàn Sán', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2657', '2050905', 'Si Ma Cai', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2658', '2050907', 'Thào Chư Phìn', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2659', '2050909', 'Bản Mế', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2660', '2050911', 'Sán Chải', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2661', '2050913', 'Lùng Sui', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2662', '2050915', 'Mản Thẩn', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2663', '2050917', 'Lùng Cải', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2664', '2050919', 'Cán Hồ', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2665', '2050921', 'Sín Chéng', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2666', '2050923', 'Lử Thẩn', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2667', '2050925', 'Quan Thần Sán', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2668', '2050927', 'Cán Cấu', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2669', '2050929', 'Nàn Xín', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2670', '2050931', 'Lùng Phình', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2671', '2050933', 'Bản Già', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2672', '2050935', 'Tả Van Chư', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2673', '2050937', 'Tả Củ Tỷ', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2674', '2050939', 'Hoàng Thu Phố', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2675', '2050941', 'Bản Phố', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2676', '2050943', 'Lầu Thí Ngài', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2677', '2050945', 'Thải Giàng Phố', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2678', '2050947', 'Na Hối', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2679', '2050949', 'Tà Chải', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2680', '2050951', 'Bản Liền', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2681', '2050953', 'Cốc Ly', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2682', '2050955', 'Nậm Mòn', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2683', '2050957', 'Nậm Đét', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2684', '2050959', 'Nậm Khánh', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2685', '2050961', 'Bảo Nhai', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2686', '2050963', 'Nậm Lúc', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2687', '2050965', 'Cốc Lầu', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2688', '2050967', 'Bản Cái', '', '120', '0');
INSERT INTO `dm_xa` VALUES ('2689', '2051101', 'Thị trấn Phố Lu', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2690', '2051103', 'Thị trấn N.T Phong Hải', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2691', '2051105', 'Thị trấn Tằng Loỏng', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2692', '2051107', 'Bản Phiệt', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2693', '2051109', 'Bản Cầm', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2694', '2051111', 'Thái Niên', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2695', '2051113', 'Phong Niên', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2696', '2051115', 'Gia Phú', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2697', '2051117', 'Xuân Quang', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2698', '2051119', 'Xuân Giao', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2699', '2051121', 'Sơn Hà', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2700', '2051123', 'Trì Quang', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2701', '2051125', 'Sơn Hải', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2702', '2051127', 'Phố Lu', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2703', '2051129', 'Phú Nhuận', '', '121', '0');
INSERT INTO `dm_xa` VALUES ('2704', '2051301', 'Thị trấn Sa Pa', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2705', '2051303', 'Bản Khoang', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2706', '2051305', 'Tả Giàng Phình', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2707', '2051307', 'Trung Chải', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2708', '2051309', 'Tả Phìn', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2709', '2051311', 'Sa Pả', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2710', '2051313', 'San Sả Hồ', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2711', '2051315', 'Bản Phùng', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2712', '2051317', 'Lao Chải', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2713', '2051319', 'Hầu Thào', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2714', '2051321', 'Thanh Kim', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2715', '2051323', 'Tả Van', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2716', '2051325', 'Sử Pán', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2717', '2051327', 'Suối Thầu', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2718', '2051329', 'Bản Hồ', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2719', '2051331', 'Thanh Phú', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2720', '2051333', 'Nậm Sài', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2721', '2051335', 'Nậm Cang', '', '122', '0');
INSERT INTO `dm_xa` VALUES ('2722', '2051501', 'Thị trấn Phố Ràng', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2723', '2051503', 'Tân Tiến', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2724', '2051505', 'Nghĩa Đô', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2725', '2051507', 'Vĩnh Yên', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2726', '2051509', 'Tân Dương', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2727', '2051511', 'Điện Quan', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2728', '2051513', 'Thượng Hà', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2729', '2051515', 'Xuân Hoà', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2730', '2051517', 'Kim Sơn', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2731', '2051519', 'Minh Tân', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2732', '2051521', 'Xuân Thượng', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2733', '2051523', 'Cam Cọn', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2734', '2051525', 'Việt Tiến', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2735', '2051527', 'Bảo Hà', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2736', '2051529', 'Yên Sơn', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2737', '2051531', 'Lương Sơn', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2738', '2051533', 'Long Phúc', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2739', '2051535', 'Long Khánh', '', '123', '0');
INSERT INTO `dm_xa` VALUES ('2740', '2051701', 'Thị trấn Than Uyên', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2741', '2051703', 'Thị trấn NT Than Uyên', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2742', '2051705', 'Thân Thuộc', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2743', '2051707', 'Mường Khoa', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2744', '2051709', 'Nậm Cần', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2745', '2051711', 'Hố Mít', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2746', '2051713', 'Nậm Sỏ', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2747', '2051715', 'Pắc Ta', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2748', '2051717', 'Mường Than', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2749', '2051719', 'Tà Mít', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2750', '2051721', 'Mường Mít', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2751', '2051723', 'Pha Mu', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2752', '2051725', 'Nà Cang', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2753', '2051727', 'Tà Hừa', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2754', '2051729', 'Mường Kim', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2755', '2051731', 'Tà Gia', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2756', '2051733', 'Khoen On', '', '124', '0');
INSERT INTO `dm_xa` VALUES ('2757', '2051901', 'Thị trấn Khánh Yên', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2758', '2051903', 'Văn Sơn', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2759', '2051905', 'Võ Lao', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2760', '2051907', 'Nậm Mả', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2761', '2051909', 'Nậm Rạng', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2762', '2051911', 'Sơn Thuỷ', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2763', '2051913', 'Tân Thượng', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2764', '2051915', 'Nậm Chầy', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2765', '2051917', 'Khánh Yên Thượng', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2766', '2051919', 'Tân An', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2767', '2051921', 'Nậm Xé', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2768', '2051923', 'Hoà Mạc', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2769', '2051925', 'Dần Thàng', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2770', '2051927', 'Chiềng Ken', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2771', '2051929', 'Làng Giàng', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2772', '2051931', 'Khánh Yên Trung', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2773', '2051933', 'Khánh Yên Hạ', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2774', '2051935', 'Dương Quỳ', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2775', '2051937', 'Nậm Tha', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2776', '2051939', 'Minh Lương', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2777', '2051941', 'Thẩm Dương', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2778', '2051943', 'Liêm Phú', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2779', '2051945', 'Nậm Xây', '', '125', '0');
INSERT INTO `dm_xa` VALUES ('2780', '2070101', 'Đức Xuân', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2781', '2070103', 'Nguyễn Thị Minh Khai', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2782', '2070105', 'Sông Cầu', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2783', '2070107', 'Phùng Chí Kiên', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2784', '2070109', 'Huyền Tụng', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2785', '2070111', 'Nông Thượng', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2786', '2070113', 'Xuất Hoá', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2787', '2070115', 'Dương Quang', '', '126', '0');
INSERT INTO `dm_xa` VALUES ('2788', '2070301', 'Thị trấn Chợ Rã', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2789', '2070303', 'Bằng Thành', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2790', '2070305', 'Nhạn Môn', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2791', '2070307', 'Công Bằng', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2792', '2070309', 'Giáo Hiệu', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2793', '2070311', 'An Thắng', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2794', '2070313', 'Xuân La', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2795', '2070315', 'Bộc Bố', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2796', '2070317', 'Cổ Linh', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2797', '2070319', 'Nghiên Loan', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2798', '2070321', 'Bành Trạch', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2799', '2070323', 'Cao Tân', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2800', '2070325', 'Phúc Lộc', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2801', '2070327', 'Cao Thượng', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2802', '2070329', 'Cao Trĩ', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2803', '2070331', 'Hà Hiệu', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2804', '2070333', 'Đồng Phúc', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2805', '2070335', 'Hoàng Trĩ', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2806', '2070337', 'Mỹ Phương', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2807', '2070339', 'Quảng Khê', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2808', '2070341', 'Chu Hương', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2809', '2070343', 'Yến Dương', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2810', '2070345', 'Địa Linh', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2811', '2070347', 'Nam Mẫu', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2812', '2070349', 'Khang Ninh', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2813', '2070351', 'Thượng Giáo', '', '127', '0');
INSERT INTO `dm_xa` VALUES ('2814', '2070501', 'Thị trấn Nà Phặc', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2815', '2070503', 'Vân Tùng', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2816', '2070505', 'Đức Vân', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2817', '2070507', 'Bằng Vân', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2818', '2070509', 'Thượng Ân', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2819', '2070511', 'Cốc Đán', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2820', '2070513', 'Trung Hoà', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2821', '2070515', 'Thượng Quan', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2822', '2070517', 'Thuần Mang', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2823', '2070519', 'Hương Nê', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2824', '2070521', 'Lãng Ngâm', '', '128', '0');
INSERT INTO `dm_xa` VALUES ('2825', '2070701', 'Thị trấn Bằng Lũng', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2826', '2070703', 'Xuân Lạc', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2827', '2070705', 'Nam Cường', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2828', '2070707', 'Đồng Lạc', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2829', '2070709', 'Bản Thi', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2830', '2070711', 'Tân Lập', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2831', '2070713', 'Quảng Bạch', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2832', '2070715', 'Bằng Phúc', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2833', '2070717', 'Ngọc Phái', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2834', '2070719', 'Yên Thịnh', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2835', '2070721', 'Phương Viên', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2836', '2070723', 'Yên Thượng', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2837', '2070725', 'Rã Bản', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2838', '2070727', 'Bằng Lãng', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2839', '2070729', 'Lương Bằng', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2840', '2070731', 'ĐôngViên', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2841', '2070733', 'Đại Xảo', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2842', '2070735', 'Phong Huân', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2843', '2070737', 'Nghĩa Tá', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2844', '2070739', 'Yên Mỹ', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2845', '2070741', 'Yên Nhuận', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2846', '2070743', 'Bình Trung', '', '129', '0');
INSERT INTO `dm_xa` VALUES ('2847', '2070901', 'Thị trấn Yến Lạc', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2848', '2070903', 'Vũ Loan', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2849', '2070905', 'Kim Hỷ', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2850', '2070907', 'Văn Học', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2851', '2070909', 'Cường Lợi', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2852', '2070911', 'Lương Thượng', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2853', '2070913', 'Lạng San', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2854', '2070915', 'Lương Hạ', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2855', '2070917', 'Ân Tình', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2856', '2070919', 'Lương Thành', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2857', '2070921', 'Kim Lư', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2858', '2070923', 'Lam Sơn', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2859', '2070925', 'Văn Minh', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2860', '2070927', 'Cư Lễ', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2861', '2070929', 'Côn Minh', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2862', '2070931', 'Hữu Thác', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2863', '2070933', 'Quang Phong', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2864', '2070935', 'Hảo Nghĩa', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2865', '2070937', 'Dương Sơn', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2866', '2070939', 'Đổng Xá', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2867', '2070941', 'Xuân Dương', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2868', '2070943', 'Liêm Thuỷ', '', '130', '0');
INSERT INTO `dm_xa` VALUES ('2869', '2071101', 'Thị trấn Phủ Thông', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2870', '2071103', 'Thị trấn Chợ Mới', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2871', '2071105', 'Phương Linh', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2872', '2071107', 'Vy Hương', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2873', '2071109', 'Sỹ Bình', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2874', '2071111', 'Vũ Muộn', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2875', '2071113', 'Tú Trĩ', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2876', '2071115', 'Tân Tiến', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2877', '2071117', 'Lục Bình', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2878', '2071119', 'Đôn Phong', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2879', '2071121', 'Quân Bình', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2880', '2071123', 'Nguyên Phúc', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2881', '2071125', 'Hà Vị', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2882', '2071127', 'Cao Sơn', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2883', '2071129', 'Cẩm Giàng', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2884', '2071131', 'Mỹ Thanh', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2885', '2071133', 'Quang Thuận', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2886', '2071135', 'Dương Phong', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2887', '2071137', 'Tân Sơn', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2888', '2071139', 'Thanh Vận', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2889', '2071141', 'Hoà Mục', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2890', '2071143', 'Thanh Mai', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2891', '2071145', 'Mai Lạp', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2892', '2071147', 'Cao Kỳ', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2893', '2071149', 'Nông Hạ', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2894', '2071151', 'Nông Thịnh', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2895', '2071153', 'Yên Hân', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2896', '2071155', 'Yên Cư', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2897', '2071157', 'Thanh Bình', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2898', '2071159', 'Như Cố', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2899', '2071161', 'Bình Văn', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2900', '2071163', 'Yên Đĩnh', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2901', '2071165', 'Quảng Chu', '', '131', '0');
INSERT INTO `dm_xa` VALUES ('2902', '2090101', 'Hoàng Văn Thụ', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2903', '2090103', 'Tam Thanh', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2904', '2090105', 'Vĩnh Trại', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2905', '2090107', 'Đông Kinh', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2906', '2090109', 'Chi Lăng', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2907', '2090111', 'Hoàng Đồng', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2908', '2090113', 'Mai Pha', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2909', '2090115', 'Quảng Lạc', '', '133', '0');
INSERT INTO `dm_xa` VALUES ('2910', '2090301', 'Thị trấn Thất Khê', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2911', '2090303', 'Khánh Long', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2912', '2090305', 'Đoàn Kết', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2913', '2090307', 'Cao Minh', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2914', '2090309', 'Vĩnh Tiến', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2915', '2090311', 'Tân Yên', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2916', '2090313', 'Tân Tiến', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2917', '2090315', 'Chí Minh', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2918', '2090317', 'Kim Đồng', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2919', '2090319', 'Bắc ái', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2920', '2090321', 'Quốc Khánh', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2921', '2090323', 'Tri Phương', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2922', '2090325', 'Đội Cấn', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2923', '2090327', 'Chi Lăng', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2924', '2090329', 'Đại Đồng', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2925', '2090331', 'Đề Thám', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2926', '2090333', 'Hùng Sơn', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2927', '2090335', 'Tân Minh', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2928', '2090337', 'Trung Thành', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2929', '2090339', 'Đào Viên', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2930', '2090341', 'Kháng Chiến', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2931', '2090343', 'Quốc Việt', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2932', '2090345', 'Hùng Việt', '', '134', '0');
INSERT INTO `dm_xa` VALUES ('2933', '2090501', 'Thị trấn Na Sầm', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2934', '2090503', 'Tân Việt', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2935', '2090505', 'Trùng Khánh', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2936', '2090507', 'Trùng Quán', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2937', '2090509', 'Thụy Hùng', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2938', '2090511', 'An Hùng', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2939', '2090513', 'Bắc La', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2940', '2090515', 'Hội Hoan', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2941', '2090517', 'Tân Tác', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2942', '2090519', 'Nam La', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2943', '2090521', 'Gia Miễn', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2944', '2090523', 'Thành Hòa', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2945', '2090525', 'Tân Lang', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2946', '2090527', 'Hoàng Việt', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2947', '2090529', 'Thanh Long', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2948', '2090531', 'Tân Thanh', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2949', '2090533', 'Tân Mỹ', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2950', '2090535', 'Hồng Thái', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2951', '2090537', 'Hoàng Văn Thụ', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2952', '2090539', 'Nhạc Kỳ', '', '135', '0');
INSERT INTO `dm_xa` VALUES ('2953', '2090701', 'Thị trấn Bình Gia', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2954', '2090703', 'Vĩnh Yên', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2955', '2090705', 'Hưng Đạo', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2956', '2090707', 'Hoa Thám', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2957', '2090709', 'Quý Hòa', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2958', '2090711', 'Yên Lỗ', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2959', '2090713', 'Thiện Hòa', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2960', '2090715', 'Thiện Thuật', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2961', '2090717', 'Thiện Long', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2962', '2090719', 'Mông Ân', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2963', '2090721', 'Tân Hòa', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2964', '2090723', 'Hòa Bình', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2965', '2090725', 'Hồng Phong', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2966', '2090727', 'Quang Trung', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2967', '2090729', 'Minh Khai', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2968', '2090731', 'Hoàng Văn Thụ', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2969', '2090733', 'Tô Hiệu', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2970', '2090735', 'Hồng Thái', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2971', '2090737', 'Bình La', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2972', '2090739', 'Tân Văn', '', '136', '0');
INSERT INTO `dm_xa` VALUES ('2973', '2090901', 'Thị trấn Bắc Sơn', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2974', '2090903', 'Vạn Thủy', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2975', '2090905', 'Đồng ý', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2976', '2090907', 'Vũ Sơn', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2977', '2090909', 'Tân Tri', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2978', '2090911', 'Chiến Thắng', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2979', '2090913', 'Vũ Lễ', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2980', '2090915', 'Long Đống', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2981', '2090917', 'Hữu Vĩnh', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2982', '2090919', 'Quỳnh Sơn', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2983', '2090921', 'Bắc Sơn', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2984', '2090923', 'Tân Lập', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2985', '2090925', 'Tân Hương', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2986', '2090927', 'Vũ Lăng', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2987', '2090929', 'Chiêu Vũ', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2988', '2090931', 'Hưng Vũ', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2989', '2090933', 'Trấn Yên', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2990', '2090935', 'Nhất Hòa', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2991', '2090937', 'Tân Thành', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2992', '2090939', 'Nhất Tiến', '', '137', '0');
INSERT INTO `dm_xa` VALUES ('2993', '2091101', 'Thị trấn Văn Quan', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('2994', '2091103', 'Trấn Ninh', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('2995', '2091105', 'Phú Mỹ', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('2996', '2091107', 'Việt Yên', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('2997', '2091109', 'Vân Mộng', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('2998', '2091111', 'Song Giang', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('2999', '2091113', 'Hòa Bình', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3000', '2091115', 'Vĩnh Lại', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3001', '2091117', 'Văn An', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3002', '2091119', 'Đại An', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3003', '2091121', 'Tú Xuyên', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3004', '2091123', 'Lương Năng', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3005', '2091125', 'Tri Lễ', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3006', '2091127', 'Hữu Lễ', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3007', '2091129', 'Xuân Mai', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3008', '2091131', 'Bình Phúc', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3009', '2091133', 'Yên Phúc', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3010', '2091135', 'Chu Túc', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3011', '2091137', 'Tân Đoàn', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3012', '2091139', 'Tràng Sơn', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3013', '2091141', 'Tràng Phái', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3014', '2091143', 'Khánh Khê', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3015', '2091145', 'Đồng Giáp', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3016', '2091147', 'Tràng Các', '', '138', '0');
INSERT INTO `dm_xa` VALUES ('3017', '2091301', 'Thị trấn Cao Lộc', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3018', '2091303', 'Thị trấn Đồng Đăng', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3019', '2091305', 'Bảo Lâm', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3020', '2091307', 'Thạch Đạn', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3021', '2091309', 'Hồng Phong', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3022', '2091311', 'Phú Xá', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3023', '2091313', 'Thụy Hùng', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3024', '2091315', 'Bình Trung', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3025', '2091317', 'Song Giáp', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3026', '2091319', 'Lộc Thanh', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3027', '2091321', 'Hòa Cư', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3028', '2091323', 'Hải Yến', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3029', '2091325', 'Công Sơn', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3030', '2091327', 'Cao Lâu', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3031', '2091329', 'Xuất Lễ', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3032', '2091331', 'Mẫu Sơn', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3033', '2091333', 'Hợp Thành', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3034', '2091335', 'Gia Cát', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3035', '2091337', 'Tân Liên', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3036', '2091339', 'Yên Trạch', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3037', '2091341', 'Xuân Long', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3038', '2091343', 'Tân Thành', '', '139', '0');
INSERT INTO `dm_xa` VALUES ('3039', '2091501', 'Thị trấn Lộc Bình', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3040', '2091503', 'Thị trấn Na Dương', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3041', '2091505', 'Xuân Lễ', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3042', '2091507', 'Bằng Khánh', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3043', '2091509', 'Xuân Mãn', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3044', '2091511', 'Đồng Bục', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3045', '2091513', 'Vân Mộng', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3046', '2091515', 'Như Khuê', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3047', '2091517', 'Xuân Tình', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3048', '2091519', 'Nhượng Bạn', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3049', '2091521', 'Hiệp Hạ', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3050', '2091523', 'Minh Phát', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3051', '2091525', 'Hữu Lân', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3052', '2091527', 'Hữu Khánh', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3053', '2091529', 'Lục Thôn', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3054', '2091531', 'Mẫu Sơn', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3055', '2091533', 'Yên Khoái', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3056', '2091535', 'Tú Mịch', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3057', '2091537', 'Tam Gia', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3058', '2091539', 'Tĩnh Bắc', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3059', '2091541', 'Tú Đoạn', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3060', '2091543', 'Khuất Xá', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3061', '2091545', 'Quan Bản', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3062', '2091547', 'Đông Quan', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3063', '2091549', 'Sàn Viên', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3064', '2091551', 'Lợi Bác', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3065', '2091553', 'Nam Quan', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3066', '2091555', 'Xuân Dương', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3067', '2091557', 'ái Quốc', '', '140', '0');
INSERT INTO `dm_xa` VALUES ('3068', '2091701', 'Thị trấn Đồng Mỏ', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3069', '2091703', 'Thị trấn Chi Lăng', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3070', '2091705', 'Bằng Hữu', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3071', '2091707', 'Bằng Mạc', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3072', '2091709', 'Gia Lộc', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3073', '2091711', 'Thượng Cường', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3074', '2091713', 'Hòa Bình', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3075', '2091715', 'Vạn Linh', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3076', '2091717', 'Y Tịch', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3077', '2091719', 'Quang Lang', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3078', '2091721', 'Chi Lăng', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3079', '2091723', 'Mai Sao', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3080', '2091725', 'Nhân Lý', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3081', '2091727', 'Bắc Thủy', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3082', '2091729', 'Vân Thủy', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3083', '2091731', 'Vân An', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3084', '2091733', 'Chiến Thắng', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3085', '2091735', 'Liên Sơn', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3086', '2091737', 'Lâm Sơn', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3087', '2091739', 'Quan Sơn', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3088', '2091741', 'Hữu Kiên', '', '141', '0');
INSERT INTO `dm_xa` VALUES ('3089', '2091901', 'Thị trấn Đình Lập', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3090', '2091903', 'Thị trấn N T Thái Bình', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3091', '2091905', 'Bính Xá', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3092', '2091907', 'Bắc Xa', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3093', '2091909', 'Kiên Mộc', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3094', '2091911', 'Đình Lập', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3095', '2091913', 'Cường Lợi', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3096', '2091915', 'Thái Bình', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3097', '2091917', 'Lâm Ca', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3098', '2091919', 'Châu Sơn', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3099', '2091921', 'Đồng Thắng', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3100', '2091923', 'Bắc Lãng', '', '142', '0');
INSERT INTO `dm_xa` VALUES ('3101', '2092101', 'Thị trấn Hữu Lũng', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3102', '2092103', 'Quyết Thắng', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3103', '2092105', 'Yên Bình', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3104', '2092107', 'Hòa Bình', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3105', '2092109', 'Hữu Liên', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3106', '2092111', 'Yên Thịnh', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3107', '2092113', 'Yên Vượng', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3108', '2092115', 'Yên Sơn', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3109', '2092117', 'Thiện Kỵ', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3110', '2092119', 'Tân Lập', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3111', '2092121', 'Minh Tiến', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3112', '2092123', 'Thanh Sơn', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3113', '2092125', 'Vân Nham', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3114', '2092127', 'Đồng Tiến', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3115', '2092129', 'Đô Lương', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3116', '2092131', 'Nhật Tiến', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3117', '2092133', 'Đồng Tân', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3118', '2092135', 'Cai Kinh', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3119', '2092137', 'Hòa Lạc', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3120', '2092139', 'Minh Sơn', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3121', '2092141', 'Sơn Hà', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3122', '2092143', 'Minh Hòa', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3123', '2092145', 'Hòa Sơn', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3124', '2092147', 'Tân Thành', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3125', '2092149', 'Hồ Sơn', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3126', '2092151', 'Hòa Thắng', '', '143', '0');
INSERT INTO `dm_xa` VALUES ('3127', '2110101', 'Tân Quang', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3128', '2110103', 'Phan Thiết', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3129', '2110105', 'Minh Xuân', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3130', '2110107', 'Tràng Đà', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3131', '2110109', 'ỷ La', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3132', '2110111', 'Nông Tiến', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3133', '2110113', 'Hưng Thành', '', '144', '0');
INSERT INTO `dm_xa` VALUES ('3134', '2110301', 'Thị trấn Vĩnh Yên', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3135', '2110303', 'Thúy Loa', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3136', '2110305', 'Thượng Giáp', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3137', '2110307', 'Sinh Long', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3138', '2110309', 'Thượng Nông', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3139', '2110311', 'Phúc Yên', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3140', '2110313', 'Xuân Lập', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3141', '2110315', 'Hồng Thái', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3142', '2110317', 'Đức Xuân', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3143', '2110319', 'Yên Hoa', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3144', '2110321', 'Côn Lôn', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3145', '2110323', 'Khuôn Hà', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3146', '2110325', 'Lăng Can', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3147', '2110327', 'Khâu Tinh', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3148', '2110329', 'Đà Vị', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3149', '2110331', 'Thượng Lâm', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3150', '2110333', 'Trùng Khánh', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3151', '2110335', 'Sơn Phú', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3152', '2110337', 'Năng Khả', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3153', '2110339', 'Vĩnh Yên', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3154', '2110341', 'Thanh Tương', '', '145', '0');
INSERT INTO `dm_xa` VALUES ('3155', '2110501', 'Thị trấn Vĩnh Lộc', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3156', '2110503', 'Bình An', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3157', '2110505', 'Hồng Quang', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3158', '2110507', 'Thổ Bình', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3159', '2110509', 'Minh Quang', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3160', '2110511', 'Trung Hà', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3161', '2110513', 'Phúc Sơn', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3162', '2110515', 'Tân Mỹ', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3163', '2110517', 'Hà Lang', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3164', '2110519', 'Hùng Mỹ', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3165', '2110521', 'Yên Lập', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3166', '2110523', 'Tân An', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3167', '2110525', 'Xuân Quang', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3168', '2110527', 'Phúc Thịnh', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3169', '2110529', 'Bình Phú', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3170', '2110531', 'Phú Bình', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3171', '2110533', 'Ngọc Hội', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3172', '2110535', 'Tân Thịnh', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3173', '2110537', 'Hòa Phú', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3174', '2110539', 'Kiên Đài', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3175', '2110541', 'Trung Hòa', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3176', '2110543', 'Kim Bình', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3177', '2110545', 'Vinh Quang', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3178', '2110547', 'Hòa An', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3179', '2110549', 'Yên Nguyên', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3180', '2110551', 'Nhân Lý', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3181', '2110553', 'Tri Phú', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3182', '2110555', 'Bình Nhân', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3183', '2110557', 'Linh Phú', '', '146', '0');
INSERT INTO `dm_xa` VALUES ('3184', '2110701', 'Thị trấn Tân Yên', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3185', '2110703', 'Yên Thuận', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3186', '2110705', 'Bạch Xa', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3187', '2110707', 'Minh Khương', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3188', '2110709', 'Phù Lưu', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3189', '2110711', 'Minh Dân', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3190', '2110713', 'Minh Hương', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3191', '2110715', 'Yên Hương', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3192', '2110717', 'Tân Thành', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3193', '2110719', 'Bình Xa', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3194', '2110721', 'Nhân Mục', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3195', '2110723', 'Thái Sơn', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3196', '2110725', 'Thái Hòa', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3197', '2110727', 'Bằng Cốc', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3198', '2110729', 'Thành Long', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3199', '2110731', 'Đức Ninh', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3200', '2110733', 'Hùng Đức', '', '147', '0');
INSERT INTO `dm_xa` VALUES ('3201', '2110901', 'Thị trấn NT Sông Lô', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3202', '2110903', 'Thị trấn NT Tháng 10', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3203', '2110905', 'Thị trấn Tân Bình', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3204', '2110907', 'An Tường', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3205', '2110909', 'Lực Hành', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3206', '2110911', 'Chiêu Yên', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3207', '2110913', 'Quí Quân', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3208', '2110915', 'Kiến Thiết', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3209', '2110917', 'Trung Minh', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3210', '2110919', 'Trung Trực', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3211', '2110921', 'Xuân Vân', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3212', '2110923', 'Phúc Ninh', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3213', '2110925', 'Hùng Lợi', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3214', '2110927', 'Trung Sơn', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3215', '2110929', 'Tứ Quận', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3216', '2110931', 'Tân Tiến', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3217', '2110933', 'Tân Long', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3218', '2110935', 'Đạo Viện', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3219', '2110937', 'Thắng Quân', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3220', '2110939', 'Kim Quan', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3221', '2110941', 'Lang Quán', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3222', '2110943', 'Phú Thịnh', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3223', '2110945', 'Trung Môn', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3224', '2110947', 'Công Đa', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3225', '2110949', 'Chân Sơn', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3226', '2110951', 'Thái Bình', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3227', '2110953', 'Kim Phú', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3228', '2110955', 'Tiến Bộ', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3229', '2110957', 'An Khang', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3230', '2110959', 'Lưỡng Vượng', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3231', '2110961', 'Hoàng Khai', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3232', '2110963', 'Phú Lâm', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3233', '2110965', 'Mỹ Bằng', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3234', '2110967', 'Thái Long', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3235', '2110969', 'Đội Cấn', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3236', '2110971', 'An Khê', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3237', '2110973', 'Đội Bình', '', '148', '0');
INSERT INTO `dm_xa` VALUES ('3238', '2111101', 'Thị trấn Sơn Dương', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3239', '2111103', 'Thị trấn NT Tân Trào', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3240', '2111105', 'Trung Yên', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3241', '2111107', 'Minh Thanh', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3242', '2111109', 'Tân Trào', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3243', '2111111', 'Vĩnh Lợi', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3244', '2111113', 'Bình Yên', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3245', '2111115', 'Thượng ấm', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3246', '2111117', 'Lương Thiện', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3247', '2111119', 'Tú Thịnh', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3248', '2111121', 'Hợp Thành', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3249', '2111123', 'Cấp Tiến', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3250', '2111125', 'Đông Thọ', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3251', '2111127', 'Kháng Nhật', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3252', '2111129', 'Phúc ứng', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3253', '2111131', 'Quyết Thắng', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3254', '2111133', 'Hợp Hòa', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3255', '2111135', 'Đồng Quý', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3256', '2111137', 'Thanh Phát', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3257', '2111139', 'Văn Phú', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3258', '2111141', 'Vân Sơn', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3259', '2111143', 'Chi Thiết', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3260', '2111145', 'Tuân Lộ', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3261', '2111147', 'Thiện Kế', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3262', '2111149', 'Hồng Lạc', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3263', '2111151', 'Đông Lợi', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3264', '2111153', 'Phú Lương', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3265', '2111155', 'Ninh Lai', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3266', '2111157', 'Sầm Dương', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3267', '2111159', 'Hào Phú', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3268', '2111161', 'Sơn Nam', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3269', '2111163', 'Tam Đa', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3270', '2111165', 'Đại Phú', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3271', '2111167', 'Lâm Xuyên', '', '149', '0');
INSERT INTO `dm_xa` VALUES ('3272', '2130101', 'Nguyễn Thái Học', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3273', '2130103', 'Hồng Hà', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3274', '2130105', 'Nguyễn Phúc', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3275', '2130107', 'Minh Tân', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3276', '2130109', 'Yên Ninh', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3277', '2130111', 'Đồng Tâm', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3278', '2130113', 'Yên Thịnh', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3279', '2130115', 'Nam Cường', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3280', '2130117', 'Tuy Lộc', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3281', '2130119', 'Minh Bảo', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3282', '2130121', 'Tân Thịnh', '', '150', '0');
INSERT INTO `dm_xa` VALUES ('3283', '2130301', 'Trung Tâm', '', '151', '0');
INSERT INTO `dm_xa` VALUES ('3284', '2130303', 'Pú Trạng', '', '151', '0');
INSERT INTO `dm_xa` VALUES ('3285', '2130305', 'Tân An', '', '151', '0');
INSERT INTO `dm_xa` VALUES ('3286', '2130307', 'Cầu Thia', '', '151', '0');
INSERT INTO `dm_xa` VALUES ('3287', '2130501', 'Thị trấn Yên Thế', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3288', '2130503', 'Yên Thắng', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3289', '2130505', 'Tân Phượng', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3290', '2130507', 'Lâm Thượng', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3291', '2130509', 'Khánh Thiện', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3292', '2130511', 'Minh Chuẩn', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3293', '2130513', 'Mai Sơn', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3294', '2130515', 'An Lạc', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3295', '2130517', 'Khai Trung', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3296', '2130519', 'Minh Xuân', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3297', '2130521', 'Mường Lai', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3298', '2130523', 'Khánh Hoà', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3299', '2130525', 'Tô Mậu', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3300', '2130527', 'Tân Lĩnh', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3301', '2130529', 'Trúc Lâu', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3302', '2130531', 'Động Quan', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3303', '2130533', 'Liễu Đô', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3304', '2130535', 'Vĩnh Lạc', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3305', '2130537', 'Phúc Lợi', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3306', '2130539', 'Tân Lập', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3307', '2130541', 'Minh Tiến', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3308', '2130543', 'Trung Tâm', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3309', '2130545', 'Phan Thanh', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3310', '2130547', 'An Phú', '', '152', '0');
INSERT INTO `dm_xa` VALUES ('3311', '2130701', 'Thị trấn Mậu A', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3312', '2130703', 'Lang Thíp', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3313', '2130705', 'Châu Quế Thượng', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3314', '2130707', 'Lâm Giang', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3315', '2130709', 'Châu Quế Hạ', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3316', '2130711', 'An Bình', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3317', '2130713', 'Đông An', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3318', '2130715', 'Quang Minh', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3319', '2130717', 'Phong Dụ Hạ', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3320', '2130719', 'Đông Cuông', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3321', '2130721', 'Phong Dụ Thượng', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3322', '2130723', 'Xuân Tầm', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3323', '2130725', 'Tân Hợp', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3324', '2130727', 'Mậu Đông', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3325', '2130729', 'Ngòi A', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3326', '2130731', 'An Thịnh', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3327', '2130733', 'Yên Thái', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3328', '2130735', 'Đại Phác', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3329', '2130737', 'Yên Hợp', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3330', '2130739', 'Yên Hưng', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3331', '2130741', 'Đại Sơn', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3332', '2130743', 'Nà Hẩu', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3333', '2130745', 'Yên Phú', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3334', '2130747', 'Xuân ái', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3335', '2130749', 'Mỏ Vàng', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3336', '2130751', 'Viễn Sơn', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3337', '2130753', 'Hoàng Thắng', '', '153', '0');
INSERT INTO `dm_xa` VALUES ('3338', '2130901', 'Mồ Dề', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3339', '2130903', 'Kim Nọi', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3340', '2130905', 'Hồ Bốn', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3341', '2130907', 'Khao Mang', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3342', '2130909', 'Chế Cu Nha', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3343', '2130911', 'Nậm Có', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3344', '2130913', 'Lao Chải', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3345', '2130915', 'Dế Su Phình', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3346', '2130917', 'La Pán Tẩn', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3347', '2130919', 'Cao Phạ', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3348', '2130921', 'Chế Tạo', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3349', '2130923', 'Púng Luông', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3350', '2130925', 'Nậm Khắt', '', '154', '0');
INSERT INTO `dm_xa` VALUES ('3351', '2131101', 'Thị trấn Cổ Phúc', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3352', '2131103', 'Tân Đồng', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3353', '2131105', 'Báo Đáp', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3354', '2131107', 'Đào Thịnh', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3355', '2131109', 'Quy Mông', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3356', '2131111', 'Việt Thành', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3357', '2131113', 'Hòa Cuông', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3358', '2131115', 'Kiên Thành', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3359', '2131117', 'Y Can', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3360', '2131119', 'Minh Tiến', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3361', '2131121', 'Nga Quán', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3362', '2131123', 'Minh Quán', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3363', '2131125', 'Cường Thịnh', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3364', '2131127', 'Âu Lâu', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3365', '2131129', 'Lương Thịnh', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3366', '2131131', 'Hợp Minh', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3367', '2131133', 'Giới Phiên', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3368', '2131135', 'Hồng Ca', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3369', '2131137', 'Hưng Khánh', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3370', '2131139', 'Hưng Thịnh', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3371', '2131141', 'Việt Cường', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3372', '2131143', 'Minh Quân', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3373', '2131145', 'Bảo Hưng', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3374', '2131147', 'Phúc Lộc', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3375', '2131149', 'Văn Phú', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3376', '2131151', 'Văn Tiến', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3377', '2131153', 'Văn Lãng', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3378', '2131155', 'Việt Hồng', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3379', '2131157', 'Vân Hội', '', '155', '0');
INSERT INTO `dm_xa` VALUES ('3380', '2131301', 'Thị trấn Yên Bình', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3381', '2131303', 'Thị trấn Thác Bà', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3382', '2131305', 'Xuân Long', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3383', '2131307', 'Ngọc Chấn', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3384', '2131309', 'Tích Cốc', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3385', '2131311', 'Tân Nguyên', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3386', '2131313', 'Phúc Ninh', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3387', '2131315', 'Mỹ Gia', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3388', '2131317', 'Cẩm Nhân', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3389', '2131319', 'Bảo ái', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3390', '2131321', 'Cẩm Ân', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3391', '2131323', 'Xuân Lai', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3392', '2131325', 'Tân Hương', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3393', '2131327', 'Mông Sơn', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3394', '2131329', 'Yên Thành', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3395', '2131331', 'Đại Đồng', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3396', '2131333', 'Phúc An', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3397', '2131335', 'Phú Thịnh', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3398', '2131337', 'Vũ Linh', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3399', '2131339', 'Bạch Hà', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3400', '2131341', 'Thịnh Hưng', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3401', '2131343', 'Vĩnh Kiên', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3402', '2131345', 'Yên Bình', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3403', '2131347', 'Hán Đà', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3404', '2131349', 'Đại Minh', '', '156', '0');
INSERT INTO `dm_xa` VALUES ('3405', '2131501', 'Thị trấn NT Liên Sơn', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3406', '2131503', 'Thị trấn NT Nghĩa Lộ', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3407', '2131505', 'Thị trấn NT Trần Phú', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3408', '2131507', 'Tú Lệ', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3409', '2131509', 'Nậm Búng', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3410', '2131511', 'Gia Hội', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3411', '2131513', 'Nậm Mười', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3412', '2131515', 'Sùng Đô', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3413', '2131517', 'Nậm Lành', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3414', '2131519', 'Sơn Lương', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3415', '2131521', 'Suối Quyền', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3416', '2131523', 'An Lương', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3417', '2131525', 'Sơn A', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3418', '2131527', 'Nghĩa Lợi', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3419', '2131529', 'Nghĩa Phúc', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3420', '2131531', 'Phù Nham', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3421', '2131533', 'Suối Giàng', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3422', '2131535', 'Nghĩa Sơn', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3423', '2131537', 'Nghĩa An', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3424', '2131539', 'Thanh Lương', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3425', '2131541', 'Sơn Thịnh', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3426', '2131543', 'Hạnh Sơn', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3427', '2131545', 'Phúc Sơn', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3428', '2131547', 'Thạch Lương', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3429', '2131549', 'Suối Bu', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3430', '2131551', 'Đồng Khê', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3431', '2131553', 'Cát Thịnh', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3432', '2131555', 'Tân Thịnh', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3433', '2131557', 'Đại Lịch', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3434', '2131559', 'Chấn Thịnh', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3435', '2131561', 'Bình Thuận', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3436', '2131563', 'Thượng Bằng La', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3437', '2131565', 'Nghĩa Tâm', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3438', '2131567', 'Minh An', '', '157', '0');
INSERT INTO `dm_xa` VALUES ('3439', '2131701', 'Hát Lìu', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3440', '2131703', 'Túc Đán', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3441', '2131705', 'Xà Hồ', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3442', '2131707', 'Pá Lau', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3443', '2131709', 'Bản Công', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3444', '2131711', 'Trạm Tấu', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3445', '2131713', 'Pá Hu', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3446', '2131715', 'Làng Nhì', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3447', '2131717', 'Phình Hồ', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3448', '2131719', 'Bản Mù', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3449', '2131721', 'Tà Si Láng', '', '158', '0');
INSERT INTO `dm_xa` VALUES ('3450', '2150101', 'Trưng Vương', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3451', '2150103', 'Tân Long', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3452', '2150105', 'Quán Triều', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3453', '2150107', 'Quang Vinh', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3454', '2150109', 'Quang Trung', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3455', '2150111', 'Hoàng Văn Thụ', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3456', '2150113', 'Đồng Quang', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3457', '2150115', 'Phan Đình Phùng', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3458', '2150117', 'Túc Duyên', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3459', '2150119', 'Tân Thịnh', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3460', '2150121', 'Gia Sàng', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3461', '2150123', 'Tân Lập', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3462', '2150125', 'Phú Xá', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3463', '2150127', 'Cam Giá', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3464', '2150129', 'Trung Thành', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3465', '2150131', 'Hương Sơn', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3466', '2150133', 'Tân Thành', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3467', '2150135', 'Phúc Hà', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3468', '2150137', 'Phúc Xuân', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3469', '2150139', 'Thịnh Đán', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3470', '2150141', 'Phúc Trìu', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3471', '2150143', 'Thịnh Đức', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3472', '2150145', 'Tân Cương', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3473', '2150147', 'Tích Lương', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3474', '2150149', 'Lương Sơn', '', '159', '0');
INSERT INTO `dm_xa` VALUES ('3475', '2150301', 'Thắng Lợi', '', '160', '0');
INSERT INTO `dm_xa` VALUES ('3476', '2150303', 'Lương Châu', '', '160', '0');
INSERT INTO `dm_xa` VALUES ('3477', '2150305', 'Mỏ Chè', '', '160', '0');
INSERT INTO `dm_xa` VALUES ('3478', '2150307', 'Tân Quang', '', '160', '0');
INSERT INTO `dm_xa` VALUES ('3479', '2150309', 'Bá Xuyên', '', '160', '0');
INSERT INTO `dm_xa` VALUES ('3480', '2150311', 'Cải Đan', '', '160', '0');
INSERT INTO `dm_xa` VALUES ('3481', '2150501', 'Thị trấn Chợ Chu', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3482', '2150503', 'Linh Thông', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3483', '2150505', 'Lam Vỹ', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3484', '2150507', 'Quy Kỳ', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3485', '2150509', 'Tân Thịnh', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3486', '2150511', 'Kim Phượng', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3487', '2150513', 'Kim Sơn', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3488', '2150515', 'Bảo Linh', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3489', '2150517', 'Phúc Chu', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3490', '2150519', 'Tân Dương', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3491', '2150521', 'Phượng Tiến', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3492', '2150523', 'Bảo Cường', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3493', '2150525', 'Đồng Thịnh', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3494', '2150527', 'Định Biên', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3495', '2150529', 'Trung Hội', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3496', '2150531', 'Thanh Định', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3497', '2150533', 'Trung Lương', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3498', '2150535', 'Bình Yên', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3499', '2150537', 'Điềm Mặc', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3500', '2150539', 'Phú Tiến', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3501', '2150541', 'Bộc Nhiêu', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3502', '2150543', 'Sơn Phú', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3503', '2150545', 'Phú Đình', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3504', '2150547', 'Bình Thành', '', '161', '0');
INSERT INTO `dm_xa` VALUES ('3505', '2150701', 'Thị trấn Đình Cả', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3506', '2150703', 'Sảng Mộc', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3507', '2150705', 'Nghinh Tường', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3508', '2150707', 'Thần Xa', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3509', '2150709', 'Vũ Chấn', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3510', '2150711', 'Thượng Nung', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3511', '2150713', 'Phú Thượng', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3512', '2150715', 'Cúc Đường', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3513', '2150717', 'Lâu Thượng', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3514', '2150719', 'Tràng Xá', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3515', '2150721', 'Phương Giao', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3516', '2150723', 'La Hiên', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3517', '2150725', 'Liên Minh', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3518', '2150727', 'Dân Tiến', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3519', '2150729', 'Bình Long', '', '162', '0');
INSERT INTO `dm_xa` VALUES ('3520', '2150901', 'Thị trấn Đu', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3521', '2150903', 'Thị trấn Giang Tiên', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3522', '2150905', 'Yên Ninh', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3523', '2150907', 'Yên Trạch', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3524', '2150909', 'Yên Đổ', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3525', '2150911', 'Yên Lạc', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3526', '2150913', 'Ôn Lương', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3527', '2150915', 'Động Đạt', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3528', '2150917', 'Phủ Lý', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3529', '2150919', 'Hợp Thành', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3530', '2150921', 'Phú Đô', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3531', '2150923', 'Tức Tranh', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3532', '2150925', 'Phấn Mễ', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3533', '2150927', 'Vô Tranh', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3534', '2150929', 'Cổ Lũng', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3535', '2150931', 'Sơn Cẩm', '', '163', '0');
INSERT INTO `dm_xa` VALUES ('3536', '2151101', 'Thị trấn Chùa Hang', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3537', '2151103', 'Thị trấn Sông Cầu', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3538', '2151105', 'Thị trấn Trại Cau', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3539', '2151107', 'Văn Lăng', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3540', '2151109', 'Tân Long', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3541', '2151111', 'Hòa Bình', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3542', '2151113', 'Quang Sơn', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3543', '2151115', 'Minh Lập', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3544', '2151117', 'Văn Hán', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3545', '2151119', 'Hóa Trung', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3546', '2151121', 'Khe Mo', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3547', '2151123', 'Cây Thị', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3548', '2151125', 'Hóa Thượng', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3549', '2151127', 'Hợp Tiến', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3550', '2151129', 'Cao Ngạn', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3551', '2151131', 'Tân Lợi', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3552', '2151133', 'Linh Sơn', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3553', '2151135', 'Nam Hòa', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3554', '2151137', 'Đồng Bẩm', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3555', '2151139', 'Huống Thượng', '', '164', '0');
INSERT INTO `dm_xa` VALUES ('3556', '2151301', 'Thị trấn Đại Từ', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3557', '2151303', 'Thị trấn Quân Chu', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3558', '2151305', 'Phúc Lương', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3559', '2151307', 'Minh Tiến', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3560', '2151309', 'Yên Lãng', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3561', '2151311', 'Đức Lương', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3562', '2151313', 'Phú Cường', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3563', '2151315', 'Na Mao', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3564', '2151317', 'Phú Lạc', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3565', '2151319', 'Phục Linh', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3566', '2151321', 'Phú Thịnh', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3567', '2151323', 'Phú Xuyên', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3568', '2151325', 'Bản Ngoại', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3569', '2151327', 'Tiên Hội', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3570', '2151329', 'Hùng Sơn', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3571', '2151331', 'Cù Vân', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3572', '2151333', 'La Bằng', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3573', '2151335', 'Hà Thượng', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3574', '2151337', 'Hoàng Nông', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3575', '2151339', 'Khôi Kỳ', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3576', '2151341', 'An Khánh', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3577', '2151343', 'Tân Thái', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3578', '2151345', 'Bình Thuận', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3579', '2151347', 'Lục Ba', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3580', '2151349', 'Mỹ Yên', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3581', '2151351', 'Văn Yên', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3582', '2151353', 'Ký Phú', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3583', '2151355', 'Vạn Thọ', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3584', '2151357', 'Cát Nê', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3585', '2151359', 'Quân Chu', '', '165', '0');
INSERT INTO `dm_xa` VALUES ('3586', '2151501', 'Thị trấn úc Sơn', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3587', '2151503', 'Bàn Đạt', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3588', '2151505', 'Đồng Liên', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3589', '2151507', 'Tân Khánh', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3590', '2151509', 'Tân Kim', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3591', '2151511', 'Tân Thành', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3592', '2151513', 'Đào Xá', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3593', '2151515', 'Thượng Đình', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3594', '2151517', 'Bảo Lý', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3595', '2151519', 'Tân Hòa', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3596', '2151521', 'Điềm Thụy', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3597', '2151523', 'Hương Sơn', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3598', '2151525', 'Nhã Lộng', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3599', '2151527', 'Xuân Phương', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3600', '2151529', 'Lương Phú', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3601', '2151531', 'Tân Đức', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3602', '2151533', 'úc Kỳ', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3603', '2151535', 'Nga My', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3604', '2151537', 'Kha Sơn', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3605', '2151539', 'Thanh Ninh', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3606', '2151541', 'Dương Thành', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3607', '2151543', 'Hà Châu', '', '166', '0');
INSERT INTO `dm_xa` VALUES ('3608', '2151701', 'Thị trấn Ba Hàng', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3609', '2151703', 'Thị trấn Bãi Bông', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3610', '2151705', 'Thị trấn Bắc Sơn', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3611', '2151707', 'Phúc Tân', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3612', '2151709', 'Bình Sơn', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3613', '2151711', 'Phúc Thuận', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3614', '2151713', 'Hồng Tiến', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3615', '2151715', 'Minh Đức', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3616', '2151717', 'Đắc Sơn', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3617', '2151719', 'Thành Công', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3618', '2151721', 'Đồng Tiến', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3619', '2151723', 'Tiên Phong', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3620', '2151725', 'Vạn Phái', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3621', '2151727', 'Nam Tiến', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3622', '2151729', 'Tân Hương', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3623', '2151731', 'Đông Cao', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3624', '2151733', 'Trung Thành', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3625', '2151735', 'Tân Phú', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3626', '2151737', 'Thuận Thành', '', '167', '0');
INSERT INTO `dm_xa` VALUES ('3627', '2170101', 'Tiên Cát', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3628', '2170103', 'Vân Cơ', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3629', '2170105', 'Nông Trang', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3630', '2170107', 'Gia Cẩm', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3631', '2170109', 'Tân Dân', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3632', '2170111', 'Thọ Sơn', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3633', '2170113', 'Thanh Miếu', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3634', '2170115', 'Bạch Hạc', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3635', '2170117', 'Phượng Lâu', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3636', '2170119', 'Vân Phú', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3637', '2170121', 'Dữu Lâu', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3638', '2170123', 'Thụy Vân', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3639', '2170125', 'Minh Phương', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3640', '2170127', 'Minh Nông', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3641', '2170129', 'Trưng Vương', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3642', '2170131', 'Sông Lô', '', '168', '0');
INSERT INTO `dm_xa` VALUES ('3643', '2170301', 'Âu Cơ', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3644', '2170303', 'Phong Châu', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3645', '2170305', 'Hùng Vương', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3646', '2170307', 'Hà Lộc', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3647', '2170309', 'Văn Lung', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3648', '2170311', 'Trường Thịnh', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3649', '2170313', 'Thanh Minh', '', '169', '0');
INSERT INTO `dm_xa` VALUES ('3650', '2170501', 'Thị trấn Đoan Hùng', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3651', '2170503', 'Đông Khê', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3652', '2170505', 'Nghinh Xuyên', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3653', '2170507', 'Hùng Quan', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3654', '2170509', 'Bằng Luân', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3655', '2170511', 'Vân Du', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3656', '2170513', 'Phương Trung', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3657', '2170515', 'Quế Lâm', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3658', '2170517', 'Minh Lương', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3659', '2170519', 'Bằng Doãn', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3660', '2170521', 'Hữu Đô', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3661', '2170523', 'Ngọc Quan', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3662', '2170525', 'Tây Cốc', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3663', '2170527', 'Phúc Lai', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3664', '2170529', 'Đại Nghĩa', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3665', '2170531', 'Phú Thứ', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3666', '2170533', 'Sóc Đăng', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3667', '2170535', 'Hùng Long', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3668', '2170537', 'Yên Kiện', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3669', '2170539', 'Vụ Quang', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3670', '2170541', 'Vân Đồn', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3671', '2170543', 'Tiêu Sơn', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3672', '2170545', 'Minh Tiến', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3673', '2170547', 'Chân Mộng', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3674', '2170549', 'Minh Phú', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3675', '2170551', 'Phong Phú', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3676', '2170553', 'Chí Đám', '', '170', '0');
INSERT INTO `dm_xa` VALUES ('3677', '2170701', 'Thị trấn Hạ Hoà', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3678', '2170703', 'Đại Phạm', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3679', '2170705', 'Hậu Bổng', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3680', '2170707', 'Liên Phương', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3681', '2170709', 'Đan Hà', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3682', '2170711', 'Hà Lương', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3683', '2170713', 'Lệnh Khanh', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3684', '2170715', 'Đan Thượng', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3685', '2170717', 'Hiền Lương', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3686', '2170719', 'Quân Khê', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3687', '2170721', 'Động Lâm', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3688', '2170723', 'Phụ Khánh', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3689', '2170725', 'Lâm Lợi', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3690', '2170727', 'Gia Điền', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3691', '2170729', 'Y Sơn', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3692', '2170731', 'ấm Hạ', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3693', '2170733', 'Phương Viên', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3694', '2170735', 'Chuế Lưu', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3695', '2170737', 'Xuân áng', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3696', '2170739', 'Hương Xạ', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3697', '2170741', 'Cáo Điền', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3698', '2170743', 'Minh Hạc', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3699', '2170745', 'Bằng Giã', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3700', '2170747', 'Vô Tranh', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3701', '2170749', 'Văn Lang', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3702', '2170751', 'Yên Kỳ', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3703', '2170753', 'Lang Sơn', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3704', '2170755', 'Yên Luật', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3705', '2170757', 'Chính Công', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3706', '2170759', 'Mai Tùng', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3707', '2170761', 'Minh Côi', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3708', '2170763', 'Vĩnh Chân', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3709', '2170765', 'Vụ Cầu', '', '171', '0');
INSERT INTO `dm_xa` VALUES ('3710', '2170901', 'Thị trấn Thanh Ba', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3711', '2170903', 'Thanh Vân', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3712', '2170905', 'Hanh Cù', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3713', '2170907', 'Đông Lĩnh', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3714', '2170909', 'Đồng Xuân', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3715', '2170911', 'Yển Khê', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3716', '2170913', 'Vũ Yển', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3717', '2170915', 'Đại An', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3718', '2170917', 'Thái Ninh', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3719', '2170919', 'Năng Yên', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3720', '2170921', 'Quảng Nạp', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3721', '2170923', 'Ninh Dân', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3722', '2170925', 'Yên Nội', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3723', '2170927', 'Phương Lĩnh', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3724', '2170929', 'Mạn Lạn', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3725', '2170931', 'Khải Xuân', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3726', '2170933', 'Võ Lao', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3727', '2170935', 'Thanh Xá', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3728', '2170937', 'Hoàng Cương', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3729', '2170939', 'Chí Tiên', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3730', '2170941', 'Đông Thành', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3731', '2170943', 'Sơn Cương', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3732', '2170945', 'Thanh Hà', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3733', '2170947', 'Đỗ Sơn', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3734', '2170949', 'Đỗ Xuyên', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3735', '2170951', 'Lương Lỗ', '', '172', '0');
INSERT INTO `dm_xa` VALUES ('3736', '2171101', 'Thị trấn Phong Châu', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3737', '2171103', 'Thị trấn Lâm Thao', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3738', '2171105', 'Thị trấn Phú Hộ', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3739', '2171107', 'Phú Mỹ', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3740', '2171109', 'Liên Hoa', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3741', '2171111', 'Trạm Thản', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3742', '2171113', 'Trị Quận', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3743', '2171115', 'Trung Giáp', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3744', '2171117', 'Hạ Giáp', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3745', '2171119', 'Bảo Thanh', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3746', '2171121', 'Tiên Phú', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3747', '2171123', 'Gia Thanh', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3748', '2171125', 'Tiên Du', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3749', '2171127', 'Phú Nham', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3750', '2171129', 'Phú Lộc', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3751', '2171131', 'Hà Thạch', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3752', '2171133', 'Bình Bộ', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3753', '2171135', 'An Đạo', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3754', '2171137', 'Tử Đà', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3755', '2171139', 'Phù Ninh', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3756', '2171141', 'Tiên Kiên', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3757', '2171143', 'Xuân Lũng', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3758', '2171145', 'Xuân Huy', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3759', '2171147', 'Vĩnh Phú', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3760', '2171149', 'Kim Đức', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3761', '2171151', 'Hùng Lô', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3762', '2171153', 'Hy Cương', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3763', '2171155', 'Thạch Sơn', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3764', '2171157', 'Chu Hóa', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3765', '2171159', 'Thanh Đình', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3766', '2171161', 'Sơn Vy', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3767', '2171163', 'Sơn Dương', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3768', '2171165', 'Hợp Hải', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3769', '2171167', 'Cao Xá', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3770', '2171169', 'Tứ Xã', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3771', '2171171', 'Kinh Kệ', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3772', '2171173', 'Vĩnh Lại', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3773', '2171175', 'Bản Nguyên', '', '173', '0');
INSERT INTO `dm_xa` VALUES ('3774', '2171301', 'Thị trấn Sông Thao', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3775', '2171303', 'Tiên Lương', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3776', '2171305', 'Tuy Lộc', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3777', '2171307', 'Ngô Xá', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3778', '2171309', 'Phượng Vĩ', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3779', '2171311', 'Phương Xá', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3780', '2171313', 'Phùng Xá', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3781', '2171315', 'Đồng Cam', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3782', '2171317', 'Thụy Liễu', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3783', '2171319', 'Tam Sơn', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3784', '2171321', 'Tùng Khê', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3785', '2171323', 'Văn Bán', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3786', '2171325', 'Sơn Nga', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3787', '2171327', 'Sai Nga', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3788', '2171329', 'Cấp Dẫn', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3789', '2171331', 'Thanh Nga', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3790', '2171333', 'Xương Thịnh', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3791', '2171335', 'Phú Khê', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3792', '2171337', 'Sơn Tình', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3793', '2171339', 'Hương Lung', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3794', '2171341', 'Yên Tập', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3795', '2171343', 'Tạ Xá', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3796', '2171345', 'Tình Cương', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3797', '2171347', 'Phú Lạc', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3798', '2171349', 'Chương Xá', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3799', '2171351', 'Hiền Đa', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3800', '2171353', 'Văn Khúc', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3801', '2171355', 'Cát Trù', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3802', '2171357', 'Điêu Lương', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3803', '2171359', 'Yên Dưỡng', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3804', '2171361', 'Đồng Lương', '', '175', '0');
INSERT INTO `dm_xa` VALUES ('3805', '2171501', 'Thị trấn Yên Lập', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3806', '2171503', 'Mỹ Lung', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3807', '2171505', 'Mỹ Lương', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3808', '2171507', 'Lương Sơn', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3809', '2171509', 'Xuân An', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3810', '2171511', 'Trung Sơn', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3811', '2171513', 'Xuân Viên', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3812', '2171515', 'Xuân Thủy', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3813', '2171517', 'Hưng Long', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3814', '2171519', 'Nga Hoàng', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3815', '2171521', 'Thượng Long', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3816', '2171523', 'Đồng Thịnh', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3817', '2171525', 'Đồng Lạc', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3818', '2171527', 'Phúc Khánh', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3819', '2171529', 'Minh Hòa', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3820', '2171531', 'Ngọc Lập', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3821', '2171533', 'Ngọc Đồng', '', '176', '0');
INSERT INTO `dm_xa` VALUES ('3822', '2171701', 'Thị trấn Hưng Hoá', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3823', '2171703', 'Hiền Quan', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3824', '2171705', 'Vực Trường', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3825', '2171707', 'Thanh Uyên', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3826', '2171709', 'Hương Nha', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3827', '2171711', 'Xuân Quang', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3828', '2171713', 'Tam Cường', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3829', '2171715', 'Văn Lương', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3830', '2171717', 'Tứ Mỹ', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3831', '2171719', 'Hùng Đô', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3832', '2171721', 'Phương Thịnh', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3833', '2171723', 'Quang Húc', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3834', '2171725', 'Tề Lễ', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3835', '2171727', 'Cổ Tiết', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3836', '2171729', 'Hương Nộn', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3837', '2171731', 'Dị Nậu', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3838', '2171733', 'Thọ Văn', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3839', '2171735', 'Dậu Dương', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3840', '2171737', 'Thượng Nông', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3841', '2171739', 'Hồng Đà', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3842', '2171741', 'Xuân Lộc', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3843', '2171743', 'Đào Xá', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3844', '2171745', 'Thạch Đồng', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3845', '2171747', 'Tân Phương', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3846', '2171749', 'La Phù', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3847', '2171751', 'Bảo Yên', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3848', '2171753', 'Sơn Thủy', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3849', '2171755', 'Đoan Hạ', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3850', '2171757', 'Hoàng Xá', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3851', '2171759', 'Đồng Luận', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3852', '2171761', 'Trung Thịnh', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3853', '2171763', 'Trung Nghĩa', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3854', '2171765', 'Phượng Mao', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3855', '2171767', 'Yến Mao', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3856', '2171769', 'Tu Vũ', '', '177', '0');
INSERT INTO `dm_xa` VALUES ('3857', '2171901', 'Thị trấn Thanh Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3858', '2171903', 'Sơn Hùng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3859', '2171905', 'Thục Luyện', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3860', '2171907', 'Giáp Lai', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3861', '2171909', 'Thạch Khoán', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3862', '2171911', 'Địch Quả', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3863', '2171913', 'Cự Thắng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3864', '2171915', 'Tất Thắng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3865', '2171917', 'Cự Đồng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3866', '2171919', 'Thắng Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3867', '2171921', 'Hương Cần', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3868', '2171923', 'Tân Lập', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3869', '2171925', 'Yên Lương', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3870', '2171927', 'Yên Lãng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3871', '2171929', 'Yên Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3872', '2171931', 'Lương Nha', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3873', '2171933', 'Tinh Nhuệ', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3874', '2171935', 'Tân Minh', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3875', '2171937', 'Võ Miếu', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3876', '2171939', 'Văn Miếu', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3877', '2171941', 'Tam Thanh', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3878', '2171943', 'Vinh Tiền', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3879', '2171945', 'Văn Luông', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3880', '2171947', 'Long Cốc', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3881', '2171949', 'Khả Cửu', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3882', '2171951', 'Đông Cửu', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3883', '2171953', 'Thượng Cửu', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3884', '2171955', 'Minh Đài', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3885', '2171957', 'Xuân Đài', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3886', '2171959', 'Kim Thượng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3887', '2171961', 'Xuân Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3888', '2171963', 'Mỹ Thuận', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3889', '2171965', 'Thu Ngạc', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3890', '2171967', 'Tân Phú', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3891', '2171969', 'Thạch Kiệt', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3892', '2171971', 'Kiệt Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3893', '2171973', 'Tân Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3894', '2171975', 'Lai Đồng', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3895', '2171977', 'Đồng Sơn', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3896', '2171979', 'Thu Cúc', '', '179', '0');
INSERT INTO `dm_xa` VALUES ('3897', '2210101', 'Trần Phú', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3898', '2210103', 'Trần Nguyên Hãn', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3899', '2210105', 'Ngô Quyền', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3900', '2210107', 'Mỹ Độ', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3901', '2210109', 'Lê Lợi', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3902', '2210111', 'Song Mai', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3903', '2210113', 'Thọ Xương', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3904', '2210115', 'Đa Mai', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3905', '2210117', 'Dĩnh Kế', '', '187', '0');
INSERT INTO `dm_xa` VALUES ('3906', '2210301', 'Thị trấn Câu Gồ', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3907', '2210303', 'Thị trấn Bố Hạ', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3908', '2210305', 'Thị trấn NT Yên Thế', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3909', '2210307', 'Phồn Xương', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3910', '2210309', 'Xuân Lương', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3911', '2210311', 'Canh Nậu', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3912', '2210313', 'Đồng Vương', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3913', '2210315', 'Tam Tiến', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3914', '2210317', 'Tam Hiệp', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3915', '2210319', 'Tiến Thắng', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3916', '2210321', 'Tân Hiệp', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3917', '2210323', 'Đồng Kỳ', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3918', '2210325', 'Hồng Kỳ', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3919', '2210327', 'Đồng Hưu', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3920', '2210329', 'An Thương', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3921', '2210331', 'Đồng Lạc', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3922', '2210333', 'Hương Vĩ', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3923', '2210335', 'Đông Sơn', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3924', '2210337', 'Tân Sỏi', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3925', '2210339', 'Bố Hạ', '', '188', '0');
INSERT INTO `dm_xa` VALUES ('3926', '2210501', 'Thị trấn Cao Thượng', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3927', '2210503', 'Cao Thượng', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3928', '2210505', 'Lan Giới', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3929', '2210507', 'Nhã Nam', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3930', '2210509', 'Phúc Sơn', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3931', '2210511', 'Đại Hóa', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3932', '2210513', 'Quang Tiến', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3933', '2210515', 'Tân Trung', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3934', '2210517', 'An Dương', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3935', '2210519', 'Liên Sơn', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3936', '2210521', 'Phúc Hòa', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3937', '2210523', 'Lam Cốt', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3938', '2210525', 'Hợp Đức', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3939', '2210527', 'Song Vân', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3940', '2210529', 'Ngọc Châu', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3941', '2210531', 'Việt Ngọc', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3942', '2210533', 'Cao Xá', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3943', '2210535', 'Việt Lập', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3944', '2210537', 'Liên Chung', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3945', '2210539', 'Ngọc Vân', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3946', '2210541', 'Ngọc Thiện', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3947', '2210543', 'Ngọc Lý', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3948', '2210545', 'Quế Nham', '', '189', '0');
INSERT INTO `dm_xa` VALUES ('3949', '2210701', 'Thị trấn Chũ', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3950', '2210703', 'Cấm Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3951', '2210705', 'Tân Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3952', '2210707', 'Xa Lý', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3953', '2210709', 'Sơn Hải', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3954', '2210711', 'Hộ Đáp', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3955', '2210713', 'Phong Minh', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3956', '2210715', 'Phong Vân', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3957', '2210717', 'Kiên Lao', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3958', '2210719', 'Kiên Thành', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3959', '2210721', 'Thanh Hải', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3960', '2210723', 'Biên Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3961', '2210725', 'Tân Hoa', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3962', '2210727', 'Quý Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3963', '2210729', 'Trù Hựu', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3964', '2210731', 'Hồng Giang', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3965', '2210733', 'Giáp Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3966', '2210735', 'Phì Điền', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3967', '2210737', 'Biển Động', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3968', '2210739', 'Nghĩa Hồ', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3969', '2210741', 'Tân Quang', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3970', '2210743', 'Đồng Cốc', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3971', '2210745', 'Phượng Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3972', '2210747', 'Nam Dương', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3973', '2210749', 'Tân Lập', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3974', '2210751', 'Phú Nhuận', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3975', '2210753', 'Mỹ An', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3976', '2210755', 'Đèo Gia', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3977', '2210757', 'Tân Mộc', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3978', '2210759', 'Kim Sơn', '', '190', '0');
INSERT INTO `dm_xa` VALUES ('3979', '2210901', 'Thị trấn Thắng', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3980', '2210903', 'Đồng Tân', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3981', '2210905', 'Thanh Vân', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3982', '2210907', 'Hoàng Lương', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3983', '2210909', 'Hoàng Vân', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3984', '2210911', 'Hoàng An', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3985', '2210913', 'Hoàng Thanh', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3986', '2210915', 'Thái Sơn', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3987', '2210917', 'Hòa Sơn', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3988', '2210919', 'Đức Thắng', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3989', '2210921', 'Ngọc Sơn', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3990', '2210923', 'Quang Minh', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3991', '2210925', 'Hùng Sơn', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3992', '2210927', 'Lương Phong', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3993', '2210929', 'Đại Thành', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3994', '2210931', 'Thường Thắng', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3995', '2210933', 'Hợp Thịnh', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3996', '2210935', 'Mai Trung', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3997', '2210937', 'Danh Thắng', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3998', '2210939', 'Đoan Bái', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('3999', '2210941', 'Bắc Lý', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('4000', '2210943', 'Xuân Cẩm', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('4001', '2210945', 'Đông Lỗ', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('4002', '2210947', 'Hương Lâm', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('4003', '2210949', 'Mai Đình', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('4004', '2210951', 'Châu Minh', '', '191', '0');
INSERT INTO `dm_xa` VALUES ('4005', '2211101', 'Thị trấn Vôi', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4006', '2211103', 'Thị trấn Kép', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4007', '2211105', 'Thị trấn NT Bố Hạ', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4008', '2211107', 'Yên Mỹ', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4009', '2211109', 'Nghĩa Hưng', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4010', '2211111', 'Quang Thịnh', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4011', '2211113', 'Nghĩa Hòa', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4012', '2211115', 'Đào Mỹ', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4013', '2211117', 'An Hà', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4014', '2211119', 'Tân Thịnh', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4015', '2211121', 'Mỹ Hà', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4016', '2211123', 'Tiên Lục', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4017', '2211125', 'Hương Sơn', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4018', '2211127', 'Dương Đức', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4019', '2211129', 'Tân Thanh', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4020', '2211131', 'Hương Lạc', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4021', '2211133', 'Mỹ Thái', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4022', '2211135', 'Xương Lâm', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4023', '2211137', 'Tân Hưng', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4024', '2211139', 'Phi Mô', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4025', '2211141', 'Xuân Hương', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4026', '2211143', 'Tân Dĩnh', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4027', '2211145', 'Thái Đào', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4028', '2211147', 'Đại Lâm', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4029', '2211149', 'Dĩnh Trì', '', '192', '0');
INSERT INTO `dm_xa` VALUES ('4030', '2211301', 'Thị trấn An Châu', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4031', '2211303', 'Quế Sơn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4032', '2211305', 'Chiên Sơn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4033', '2211307', 'Giáo Liêm', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4034', '2211309', 'Vân Sơn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4035', '2211311', 'Hữu Sản', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4036', '2211313', 'Cẩm Đàn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4037', '2211315', 'Vĩnh Khương', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4038', '2211317', 'Yên Định', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4039', '2211319', 'An Lập', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4040', '2211321', 'Lệ Viễn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4041', '2211323', 'An Lạc', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4042', '2211325', 'An Bá', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4043', '2211327', 'An Châu', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4044', '2211329', 'Tuấn Đạo', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4045', '2211331', 'Bồng Am', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4046', '2211333', 'Dương Hưu', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4047', '2211335', 'Thanh Luận', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4048', '2211337', 'Long Sơn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4049', '2211339', 'Thanh Sơn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4050', '2211341', 'Thạch Sơn', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4051', '2211343', 'Phúc Thắng', '', '193', '0');
INSERT INTO `dm_xa` VALUES ('4052', '2211501', 'Thị trấn Lục Nam', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4053', '2211503', 'Thị trấn Đồi Ngô', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4054', '2211505', 'Tiên Hưng', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4055', '2211507', 'Bảo Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4056', '2211509', 'Tam Dị', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4057', '2211511', 'Đông Phú', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4058', '2211513', 'Đông Hưng', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4059', '2211515', 'Bảo Đài', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4060', '2211517', 'Thanh Lâm', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4061', '2211519', 'Phương Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4062', '2211521', 'Tiên Nha', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4063', '2211523', 'Trường Giang', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4064', '2211525', 'Chu Điện', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4065', '2211527', 'Cương Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4066', '2211529', 'Lan Mẫu', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4067', '2211531', 'Nghĩa Phương', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4068', '2211533', 'Vô Tranh', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4069', '2211535', 'Khám Lạng', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4070', '2211537', 'Huyền Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4071', '2211539', 'Bình Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4072', '2211541', 'Yên Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4073', '2211543', 'Bắc Lũng', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4074', '2211545', 'Vũ Xá', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4075', '2211547', 'Trường Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4076', '2211549', 'Lục Sơn', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4077', '2211551', 'Cẩm Lý', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4078', '2211553', 'Đan Hội', '', '194', '0');
INSERT INTO `dm_xa` VALUES ('4079', '2211701', 'Thị trấn Bích Động', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4080', '2211703', 'Bích Sơn', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4081', '2211705', 'Thượng Lan', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4082', '2211707', 'Việt Tiến', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4083', '2211709', 'Minh Đức', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4084', '2211711', 'Tự Lạn', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4085', '2211713', 'Hương Mai', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4086', '2211715', 'Nghĩa Trung', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4087', '2211717', 'Trung Sơn', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4088', '2211719', 'Hồng Thái', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4089', '2211721', 'Quảng Minh', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4090', '2211723', 'Hoàng Ninh', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4091', '2211725', 'Tăng Tiến', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4092', '2211727', 'Tiên Sơn', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4093', '2211729', 'Ninh Sơn', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4094', '2211731', 'Vân Trung', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4095', '2211733', 'Vân Hà', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4096', '2211735', 'Quang Châu', '', '195', '0');
INSERT INTO `dm_xa` VALUES ('4097', '2211901', 'Thị trấn Neo', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4098', '2211903', 'Nham Sơn', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4099', '2211905', 'Lão Hộ', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4100', '2211907', 'Tân Mỹ', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4101', '2211909', 'Đồng Sơn', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4102', '2211911', 'Hương Gián', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4103', '2211913', 'Tân An', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4104', '2211915', 'Song Khê', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4105', '2211917', 'Tân Tiến', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4106', '2211919', 'Quỳnh Sơn', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4107', '2211921', 'Nội Hoàng', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4108', '2211923', 'Tân Liễu', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4109', '2211925', 'Xuân Phú', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4110', '2211927', 'Tiền Phong', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4111', '2211929', 'Lãng Sơn', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4112', '2211931', 'Trí Yên', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4113', '2211933', 'Tiến Dũng', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4114', '2211935', 'Yên Lư', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4115', '2211937', 'Cảnh Thụy', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4116', '2211939', 'Tư Mại', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4117', '2211941', 'Đức Giang', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4118', '2211943', 'Thắng Cương', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4119', '2211945', 'Đồng Phúc', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4120', '2211947', 'Đồng Việt', '', '196', '0');
INSERT INTO `dm_xa` VALUES ('4121', '2250101', 'Hà Khánh', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4122', '2250103', 'Hà Lầm', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4123', '2250105', 'Hà Trung', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4124', '2250107', 'Hà Phong', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4125', '2250109', 'Hà Tu', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4126', '2250111', 'Hồng Hà', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4127', '2250113', 'Hồng Hải', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4128', '2250115', 'Cao Thắng', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4129', '2250117', 'Cao Xanh', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4130', '2250119', 'Yết Kiêu', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4131', '2250121', 'Trần Hưng Đạo', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4132', '2250123', 'Bạch Đằng', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4133', '2250125', 'Hồng Gai', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4134', '2250127', 'Bãi Cháy', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4135', '2250129', 'Hà Khẩu', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4136', '2250131', 'Giếng Đáy', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4137', '2250133', 'Hùng Thắng', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4138', '2250135', 'Tuần Châu', '', '206', '0');
INSERT INTO `dm_xa` VALUES ('4139', '2250301', 'Mông Dương', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4140', '2250303', 'Cửa Ông', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4141', '2250305', 'Cẩm Thịnh', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4142', '2250307', 'Cẩm Phú', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4143', '2250309', 'Cẩm Sơn', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4144', '2250311', 'Cẩm Đông', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4145', '2250313', 'Cẩm Tây', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4146', '2250315', 'Cẩm Thành', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4147', '2250317', 'Cẩm Trung', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4148', '2250319', 'Cẩm Thủy', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4149', '2250321', 'Cẩm Thạch', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4150', '2250323', 'Cộng Hòa', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4151', '2250325', 'Dương Huy', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4152', '2250327', 'Cẩm Bình', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4153', '2250329', 'Cẩm Hải', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4154', '2250331', 'Quang Hanh', '', '207', '0');
INSERT INTO `dm_xa` VALUES ('4155', '2250501', 'Vàng Danh', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4156', '2250503', 'Bắc Sơn', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4157', '2250505', 'Trương Vương', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4158', '2250507', 'Quang Trung', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4159', '2250509', 'Thanh Sơn', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4160', '2250511', 'Thượng Yên Công', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4161', '2250513', 'Nam Khê', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4162', '2250515', 'Phương Đông', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4163', '2250517', 'Phương Nam', '', '208', '0');
INSERT INTO `dm_xa` VALUES ('4164', '2250701', 'Thị trấn Móng Cái', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4165', '2250703', 'Thị trấn LT Hải Sơn', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4166', '2250705', 'Trà Cổ', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4167', '2250707', 'Bình Ngọc', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4168', '2250709', 'Hải Xuân', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4169', '2250711', 'Hải Hoà', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4170', '2250713', 'Ninh Dương', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4171', '2250715', 'Vạn Ninh', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4172', '2250717', 'Hải Yên', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4173', '2250719', 'Hải Đông', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4174', '2250721', 'Hải Tiến', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4175', '2250723', 'Quảng Nghĩa', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4176', '2250725', 'Vĩnh Thực', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4177', '2250727', 'Vĩnh Trung', '', '209', '0');
INSERT INTO `dm_xa` VALUES ('4178', '2250901', 'Thị trấn Bình Liêu', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4179', '2250903', 'Đồng Văn', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4180', '2250905', 'Hoành Mô', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4181', '2250907', 'Đồng Tâm', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4182', '2250909', 'Lục Hồn', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4183', '2250911', 'Tĩnh Húc', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4184', '2250913', 'Húc Động', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4185', '2250915', 'Vô Ngại', '', '210', '0');
INSERT INTO `dm_xa` VALUES ('4186', '2251101', 'Thị trấn Quảng Hà', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4187', '2251103', 'Thị trấn Đầm Hà', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4188', '2251105', 'Quảng Đức', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4189', '2251107', 'Quảng Sơn', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4190', '2251109', 'Quảng Thành', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4191', '2251111', 'Quảng Thịnh', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4192', '2251113', 'Quảng Minh', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4193', '2251115', 'Quảng Thắng', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4194', '2251117', 'Quảng Chính', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4195', '2251119', 'Quảng Trung', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4196', '2251121', 'Quảng Long', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4197', '2251123', 'Quảng Điền', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4198', '2251125', 'Quảng Phong', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4199', '2251127', 'Phú Hải', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4200', '2251129', 'Đường Hoa', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4201', '2251131', 'Tiến Tới', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4202', '2251133', 'Tân Bình', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4203', '2251135', 'Đầm Hà', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4204', '2251137', 'Quảng Lợi', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4205', '2251139', 'Quảng Tân', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4206', '2251141', 'Dực Yên', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4207', '2251143', 'Đại Bình', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4208', '2251145', 'Quảng Lâm', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4209', '2251147', 'Quảng An', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4210', '2251149', 'Cái Chiên', '', '211', '0');
INSERT INTO `dm_xa` VALUES ('4211', '2251301', 'Thị trấn Tiên Yên', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4212', '2251303', 'Đại Dực', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4213', '2251305', 'Hà Lâu', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4214', '2251307', 'Phong Dụ', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4215', '2251309', 'Điền Xá', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4216', '2251311', 'Yên Than', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4217', '2251313', 'Hải Lạng', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4218', '2251315', 'Tiên Lãng', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4219', '2251317', 'Đông Ngũ', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4220', '2251319', 'Đông Hải', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4221', '2251321', 'Đồng Rui', '', '212', '0');
INSERT INTO `dm_xa` VALUES ('4222', '2251501', 'Thị trấn Ba Chẽ', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4223', '2251503', 'Minh Cầm', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4224', '2251505', 'Lương Mông', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4225', '2251507', 'Thanh Lâm', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4226', '2251509', 'Thanh Sơn', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4227', '2251511', 'Đạp Thanh', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4228', '2251513', 'Đồn Đạc', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4229', '2251515', 'Nam Sơn', '', '213', '0');
INSERT INTO `dm_xa` VALUES ('4230', '2251701', 'Thị trấn Cái Rồng', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4231', '2251703', 'Đài Xuyên', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4232', '2251705', 'Bình Dân', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4233', '2251707', 'Đoàn Kết', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4234', '2251709', 'Vạn Yên', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4235', '2251711', 'Hạ Long', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4236', '2251713', 'Đông Xá', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4237', '2251715', 'Minh Châu', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4238', '2251717', 'Quan Lạn', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4239', '2251719', 'Bản Sen', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4240', '2251721', 'Ngọc Vừng', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4241', '2251723', 'Thắng Lợi', '', '214', '0');
INSERT INTO `dm_xa` VALUES ('4242', '2251901', 'Thị trấn Trới', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4243', '2251903', 'Kỳ Thượng', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4244', '2251905', 'Hòa Bình', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4245', '2251907', 'Đồng Lâm', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4246', '2251909', 'Đồng Sơn', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4247', '2251911', 'Vũ Oai', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4248', '2251913', 'Thống Nhất', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4249', '2251915', 'Lê Lợi', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4250', '2251917', 'Quảng La', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4251', '2251919', 'Sơn Dương', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4252', '2251921', 'Dân Chủ', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4253', '2251923', 'Bằng Cả', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4254', '2251925', 'Tân Dân', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4255', '2251927', 'Việt Hưng', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4256', '2251929', 'Đại Yên', '', '215', '0');
INSERT INTO `dm_xa` VALUES ('4257', '2252101', 'Thị trấn Đông Triều', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4258', '2252103', 'Thị trấn Mạo Khê', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4259', '2252105', 'Bình Dương', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4260', '2252107', 'Nguyễn Huệ', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4261', '2252109', 'Thủy An', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4262', '2252111', 'Việt Dân', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4263', '2252113', 'An Sinh', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4264', '2252115', 'Tân Việt', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4265', '2252117', 'Hồng Phong', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4266', '2252119', 'Đức Chính', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4267', '2252121', 'Tràng An', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4268', '2252123', 'Hưng Đạo', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4269', '2252125', 'Xuân Sơn', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4270', '2252127', 'Kim Sơn', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4271', '2252129', 'Yên Thọ', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4272', '2252131', 'Yên Đức', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4273', '2252133', 'Hoàng Quế', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4274', '2252135', 'Hồng Thái Tây', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4275', '2252137', 'Hồng Thái Đông', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4276', '2252139', 'Bình Khê', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4277', '2252141', 'Tràng Lương', '', '216', '0');
INSERT INTO `dm_xa` VALUES ('4278', '2252301', 'Cô Tô', '', '217', '0');
INSERT INTO `dm_xa` VALUES ('4279', '2252303', 'Thanh Lân', '', '217', '0');
INSERT INTO `dm_xa` VALUES ('4280', '2252501', 'Thị trấn Quảng Yên', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4281', '2252503', 'Minh Thành', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4282', '2252505', 'Đông Mai', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4283', '2252507', 'Sông Khoai', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4284', '2252509', 'Cộng Hòa', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4285', '2252511', 'Tiền An', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4286', '2252513', 'Tân An', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4287', '2252515', 'Hoàng Tân', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4288', '2252517', 'Hà An', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4289', '2252519', 'Điền Công', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4290', '2252521', 'Hiệp Hòa', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4291', '2252523', 'Yên Giang', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4292', '2252525', 'Nam Hòa', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4293', '2252527', 'Yên Hải', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4294', '2252529', 'Cẩm La', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4295', '2252531', 'Phong Cốc', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4296', '2252533', 'Phong Hải', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4297', '2252535', 'Liên Hòa', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4298', '2252537', 'Liên Vị', '', '218', '0');
INSERT INTO `dm_xa` VALUES ('4299', '3010101', 'Mường Thanh', '', '219', '0');
INSERT INTO `dm_xa` VALUES ('4300', '3010103', 'Thanh Bình', '', '219', '0');
INSERT INTO `dm_xa` VALUES ('4301', '3010105', 'Him Lam', '', '219', '0');
INSERT INTO `dm_xa` VALUES ('4302', '3010107', 'Thanh Minh', '', '219', '0');
INSERT INTO `dm_xa` VALUES ('4303', '3010109', 'Noong Bua', '', '219', '0');
INSERT INTO `dm_xa` VALUES ('4304', '3010301', 'Na Lay', '', '220', '0');
INSERT INTO `dm_xa` VALUES ('4305', '3010303', 'Lê Lợi', '', '220', '0');
INSERT INTO `dm_xa` VALUES ('4306', '3010305', 'Sông Đà', '', '220', '0');
INSERT INTO `dm_xa` VALUES ('4307', '3010501', 'Thị trấn Mường Tè', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4308', '3010503', 'Thu Lũm', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4309', '3010505', 'Ka Lăng', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4310', '3010507', 'Pa Vệ Sử', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4311', '3010509', 'Hua Bun', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4312', '3010511', 'Mường Tè', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4313', '3010513', 'Bun Nưa', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4314', '3010515', 'Bun Tở', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4315', '3010517', 'Mường Mô', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4316', '3010519', 'Sín Thầu', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4317', '3010521', 'Chung Chải', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4318', '3010523', 'Mường Nhé', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4319', '3010525', 'Mường Toong', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4320', '3010527', 'Mù Cả', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4321', '3010529', 'Pa ủ', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4322', '3010531', 'Tà Tổng', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4323', '3010533', 'Nậm Khao', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4324', '3010535', 'Kan Hồ', '', '221', '0');
INSERT INTO `dm_xa` VALUES ('4325', '3010701', 'Thị trấn Phong Thổ', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4326', '3010703', 'Sì Lờ Lầu', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4327', '3010705', 'Mồ Sì San', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4328', '3010707', 'Ma Li Chải', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4329', '3010709', 'Pa Vây Sử', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4330', '3010711', 'Vàng Ma Chải', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4331', '3010713', 'Tông Qua Lìn', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4332', '3010715', 'Dào San', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4333', '3010717', 'Mù Sang', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4334', '3010719', 'Ma Ly Pho', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4335', '3010721', 'Hoang Thèn', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4336', '3010723', 'Bản Lang', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4337', '3010725', 'Khổng Lào', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4338', '3010727', 'Mường So', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4339', '3010729', 'Nậm Xe', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4340', '3010731', 'Sin Suối Hồ', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4341', '3010733', 'Thèn Sin', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4342', '3010735', 'Tam Đường', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4343', '3010737', 'Lả Nhì Thàng', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4344', '3010739', 'Sùng Phài', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4345', '3010741', 'Nậm Loỏng', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4346', '3010743', 'Nùng Nàng', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4347', '3010745', 'Tả Lèng', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4348', '3010747', 'Hồ Thầu', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4349', '3010749', 'Bản Giang', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4350', '3010751', 'Bản Hon', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4351', '3010753', 'Bình Lư', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4352', '3010755', 'Nà Tăm', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4353', '3010757', 'Bản Bo', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4354', '3010759', 'Khun Há', '', '222', '0');
INSERT INTO `dm_xa` VALUES ('4355', '3010901', 'Thị trấn Sìn Hồ', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4356', '3010903', 'Huổi Luông', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4357', '3010905', 'Pa Tần', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4358', '3010907', 'Phìn Hồ', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4359', '3010909', 'Nậm Ban', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4360', '3010911', 'Hồng Thu', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4361', '3010913', 'Tả Phìn', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4362', '3010915', 'Phăng Sô Lin', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4363', '3010917', 'Ma Quai', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4364', '3010919', 'Sà Dề Phìn', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4365', '3010921', 'Tả Ngảo', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4366', '3010923', 'Nậm Tăm', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4367', '3010925', 'Làng Mô', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4368', '3010927', 'Nậm Cha', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4369', '3010929', 'Noong Hẻo', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4370', '3010931', 'Pu Sam Cáp', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4371', '3010933', 'Tủa Sín Chải', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4372', '3010935', 'Nậm Mạ', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4373', '3010937', 'Căn Co', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4374', '3010939', 'Nậm Cuổi', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4375', '3010941', 'Nậm Hăn', '', '223', '0');
INSERT INTO `dm_xa` VALUES ('4376', '3011101', 'Thị trấn Mường Lay', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4377', '3011103', 'Nậm Hàng', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4378', '3011105', 'Pú Đao', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4379', '3011107', 'Chăn Nưa', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4380', '3011109', 'Lay Nưa', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4381', '3011111', 'Mường Tùng', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4382', '3011113', 'Huổi Lèng', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4383', '3011115', 'Chà Nưa', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4384', '3011117', 'Chà Cang', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4385', '3011119', 'Chà Tở', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4386', '3011121', 'Si Pa Phìn', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4387', '3011123', 'Hừa Ngài', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4388', '3011125', 'Pa Ham', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4389', '3011127', 'Xá Tổng', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4390', '3011129', 'Mường Mơn', '', '224', '0');
INSERT INTO `dm_xa` VALUES ('4391', '3011301', 'Thị trấn Tủa Chùa', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4392', '3011303', 'Xín Chải', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4393', '3011305', 'Huổi Só', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4394', '3011307', 'Tả Sìn Thàng', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4395', '3011309', 'Lao Xả Phình', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4396', '3011311', 'Tả Phìn', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4397', '3011313', 'Tủa Thàng', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4398', '3011315', 'Trung Thu', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4399', '3011317', 'Sính Phình', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4400', '3011319', 'Mường Báng', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4401', '3011321', 'Sáng Nhè', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4402', '3011323', 'Mường Đun', '', '225', '0');
INSERT INTO `dm_xa` VALUES ('4403', '3011501', 'Thị trấn Tuần Giáo', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4404', '3011503', 'Thị trấn Mường ẳng', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4405', '3011505', 'Mường Mùn', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4406', '3011507', 'Mường Chung', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4407', '3011509', 'Phình Sáng', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4408', '3011511', 'Ta Ma', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4409', '3011513', 'Pú Nhung', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4410', '3011515', 'Quài Nưa', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4411', '3011517', 'Tỏa Tình', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4412', '3011519', 'Quài Tở', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4413', '3011521', 'Quài Cang', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4414', '3011523', 'Tênh Phông', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4415', '3011525', 'Chiềng Sinh', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4416', '3011527', 'Búng Lao', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4417', '3011529', 'Nà Sáy', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4418', '3011531', 'Mường Thín', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4419', '3011533', 'Mường Lạm', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4420', '3011535', 'ẳng Tở', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4421', '3011537', 'ẳng Cang', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4422', '3011539', 'ẳng Nưa', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4423', '3011541', 'Mường Đăng', '', '226', '0');
INSERT INTO `dm_xa` VALUES ('4424', '3011701', 'Thị trấn Mường Thanh', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4425', '3011703', 'Mường Pồn', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4426', '3011705', 'Nà Tấu', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4427', '3011707', 'Thanh Nưa', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4428', '3011709', 'Mường Phăng', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4429', '3011711', 'Thanh Luông', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4430', '3011713', 'Thanh Hưng', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4431', '3011715', 'Thanh Xương', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4432', '3011717', 'Thanh Chăn', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4433', '3011719', 'Thanh An', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4434', '3011721', 'Thanh Yên', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4435', '3011723', 'Nong Hẹt', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4436', '3011725', 'Pa Thơm', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4437', '3011727', 'Noong Luống', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4438', '3011729', 'Sam Mứn', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4439', '3011731', 'Núa Ngam', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4440', '3011733', 'Na ư', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4441', '3011735', 'Mường Nhà', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4442', '3011737', 'Mường Lói', '', '227', '0');
INSERT INTO `dm_xa` VALUES ('4443', '3011901', 'Pú Nhi', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4444', '3011903', 'Na Son', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4445', '3011905', 'Xa Dung', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4446', '3011907', 'Phì Nhừ', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4447', '3011909', 'Keo Lôm', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4448', '3011911', 'Phình Giàng', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4449', '3011913', 'Chiềng Sơ', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4450', '3011915', 'Mường Luân', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4451', '3011917', 'Luân Giới', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4452', '3011919', 'Háng Lìa', '', '228', '0');
INSERT INTO `dm_xa` VALUES ('4453', '3030101', 'Chiềng Lề', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4454', '3030103', 'Quyết Thắng', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4455', '3030105', 'Chiềng Đen', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4456', '3030107', 'Chiềng Xôm', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4457', '3030109', 'Chiềng An', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4458', '3030111', 'Chiềng Ngần', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4459', '3030113', 'Chiềng Cọ', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4460', '3030115', 'Chiềng Cơi', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4461', '3030117', 'Hua La', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4462', '3030119', 'Chiềng Sinh', '', '229', '0');
INSERT INTO `dm_xa` VALUES ('4463', '3030301', 'Mường Chiên', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4464', '3030303', 'Cà Nàng', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4465', '3030305', 'Chiềng Khay', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4466', '3030307', 'Pha Khinh', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4467', '3030309', 'Mường Giôn', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4468', '3030311', 'Pắc Ma', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4469', '3030313', 'Chiềng Ơn', '', '230', '0');
INSERT INTO `dm_xa` VALUES ('4470', '3030501', 'ít Ong', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4471', '3030503', 'Nậm Giôn', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4472', '3030505', 'Chiềng Lao', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4473', '3030507', 'Hua Trai', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4474', '3030509', 'Ngọc Chiến', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4475', '3030511', 'Mường Trai', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4476', '3030513', 'Nậm Păm', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4477', '3030515', 'Chiềng Muôn', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4478', '3030517', 'Chiềng Ân', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4479', '3030519', 'Pi Toong', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4480', '3030521', 'Chiềng Công', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4481', '3030523', 'Tạ Bú', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4482', '3030525', 'Chiềng San', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4483', '3030527', 'Mường Bú', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4484', '3030529', 'Chiềng Hoa', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4485', '3030531', 'Mường Chùm', '', '231', '0');
INSERT INTO `dm_xa` VALUES ('4486', '3030701', 'Thị trấn Thuận Châu', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4487', '3030703', 'Mường Giàng', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4488', '3030705', 'Chiềng Bằng', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4489', '3030707', 'Mường Sại', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4490', '3030709', 'Phỏng Lái', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4491', '3030711', 'Chiềng Khoang', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4492', '3030713', 'Liệp Muội', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4493', '3030715', 'Nậm ét', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4494', '3030717', 'Mường é', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4495', '3030719', 'Chiềng Pha', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4496', '3030721', 'Chiềng La', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4497', '3030723', 'Chiềng Ngàm', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4498', '3030725', 'Liệp Tè', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4499', '3030727', 'é Tòng', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4500', '3030729', 'Phỏng Lập', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4501', '3030731', 'Chiềng Sơ', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4502', '3030733', 'Chiềng Ly', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4503', '3030735', 'Nong Lay', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4504', '3030737', 'Mường Khiêng', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4505', '3030739', 'Mường Bám', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4506', '3030741', 'Long Hẹ', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4507', '3030743', 'Chiềng Bôm', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4508', '3030745', 'Thôn Mòn', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4509', '3030747', 'Tòng Lệnh', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4510', '3030749', 'Tòng Cọ', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4511', '3030751', 'Bó Mười', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4512', '3030753', 'Co Mạ', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4513', '3030755', 'Púng Tra', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4514', '3030757', 'Chiềng Pấc', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4515', '3030759', 'Nậm Lầu', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4516', '3030761', 'Bon Phặng', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4517', '3030763', 'Co Tòng', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4518', '3030765', 'Muội Nọi', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4519', '3030767', 'Pá Lông', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4520', '3030769', 'Bản Lầm', '', '232', '0');
INSERT INTO `dm_xa` VALUES ('4521', '3030901', 'Phiêng Ban', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4522', '3030903', 'Hang Chú', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4523', '3030905', 'Xín Vàng', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4524', '3030907', 'Tà Xùa', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4525', '3030909', 'Bắc Ngà', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4526', '3030911', 'Làng Chếu', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4527', '3030913', 'Chim Vàn', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4528', '3030915', 'Mường Khoa', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4529', '3030917', 'Song Pe', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4530', '3030919', 'Hồng Ngài', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4531', '3030921', 'Tạ Khoa', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4532', '3030923', 'Phiêng Kôn', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4533', '3030925', 'Chiềng Sại', '', '233', '0');
INSERT INTO `dm_xa` VALUES ('4534', '3031101', 'Thị trấn Phù Yên', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4535', '3031103', 'Suối Tọ', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4536', '3031105', 'Mường Thải', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4537', '3031107', 'Mường Cơi', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4538', '3031109', 'Quang Huy', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4539', '3031111', 'Huy Bắc', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4540', '3031113', 'Huy Thượng', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4541', '3031115', 'Tân Lang', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4542', '3031117', 'Gia Phù', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4543', '3031119', 'Tường Phù', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4544', '3031121', 'Huy Hạ', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4545', '3031123', 'Huy Tân', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4546', '3031125', 'Mường Lang', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4547', '3031127', 'Suối Bau', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4548', '3031129', 'Huy Tường', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4549', '3031131', 'Mường Do', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4550', '3031133', 'Sập Xa', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4551', '3031135', 'Tường Thượng', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4552', '3031137', 'Tường Tiến', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4553', '3031139', 'Tường Phong', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4554', '3031141', 'Tường Hạ', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4555', '3031143', 'Kim Bon', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4556', '3031145', 'Mường Bang', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4557', '3031147', 'Đá Đỏ', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4558', '3031149', 'Tân Phong', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4559', '3031151', 'Nam Phong', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4560', '3031153', 'Bắc Phong', '', '234', '0');
INSERT INTO `dm_xa` VALUES ('4561', '3031301', 'Thị trấn Hát Lót', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4562', '3031303', 'Thị trấn NT Tô Hiệu', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4563', '3031305', 'Thị trấn NT Chiềng Sung', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4564', '3031307', 'Mường Bằng', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4565', '3031309', 'Chiềng Chăn', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4566', '3031311', 'Mương Tranh', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4567', '3031313', 'Chiềng Ban', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4568', '3031315', 'Chiềng Mung', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4569', '3031317', 'Mường Bon', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4570', '3031319', 'Chiềng Chung', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4571', '3031321', 'Chiềng Mai', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4572', '3031323', 'Hát Lót', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4573', '3031325', 'Cò Nòi', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4574', '3031327', 'Chiềng Nơi', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4575', '3031329', 'Chiềng Dong', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4576', '3031331', 'Chiềng Kheo', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4577', '3031333', 'Chiềng Ve', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4578', '3031335', 'Chiềng Lương', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4579', '3031337', 'Phiêng Pằn', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4580', '3031339', 'Tà Hộc', '', '235', '0');
INSERT INTO `dm_xa` VALUES ('4581', '3031501', 'Thị trấn Sông Mã', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4582', '3031503', 'Bó Sinh', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4583', '3031505', 'Pú Pẩu', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4584', '3031507', 'Chiềng Phung', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4585', '3031509', 'Chiềng En', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4586', '3031511', 'Mường Lầm', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4587', '3031513', 'Nậm Ty', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4588', '3031515', 'Đứa Mòn', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4589', '3031517', 'Yên Hưng', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4590', '3031519', 'Chiềng Sơ', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4591', '3031521', 'Nà Ngựu', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4592', '3031523', 'Nậm Mằn', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4593', '3031525', 'Chiềng Khoong', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4594', '3031527', 'Chiềng Cang', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4595', '3031529', 'Sam Kha', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4596', '3031531', 'Púng Bánh', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4597', '3031533', 'Huổi Một', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4598', '3031535', 'Mường Sai', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4599', '3031537', 'Dồm Cang', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4600', '3031539', 'Xốp Cộp', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4601', '3031541', 'Mường Cai', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4602', '3031543', 'Mường Hung', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4603', '3031545', 'Mường Lèo', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4604', '3031547', 'Chiềng Khương', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4605', '3031549', 'Nậm Lạnh', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4606', '3031551', 'Mường Và', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4607', '3031553', 'Mường Lạn', '', '236', '0');
INSERT INTO `dm_xa` VALUES ('4608', '3031701', 'Thị trấn Yên Châu', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4609', '3031703', 'Chiềng Đông', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4610', '3031705', 'Sập Vạt', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4611', '3031707', 'Chiềng Sàng', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4612', '3031709', 'Chiềng Pằn', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4613', '3031711', 'Viêng Lán', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4614', '3031713', 'Chiềng Hặc', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4615', '3031715', 'Mường Lựm', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4616', '3031717', 'Chiềng On', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4617', '3031719', 'Chiềng Khoi', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4618', '3031721', 'Tú Nang', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4619', '3031723', 'Lóng Phiêng', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4620', '3031725', 'Phiêng Khoài', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4621', '3031727', 'Chiềng Tương', '', '237', '0');
INSERT INTO `dm_xa` VALUES ('4622', '3031901', 'Thị trấn Mộc Châu', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4623', '3031903', 'Thị trấn Nông Trường Mộc Châu', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4624', '3031905', 'Thị trấn Nông Trường Chiềng Ve', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4625', '3031907', 'Tân Hợp', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4626', '3031909', 'Qui Hướng', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4627', '3031911', 'Suối Bàng', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4628', '3031913', 'Tân Lập', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4629', '3031915', 'Nà Mường', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4630', '3031917', 'Song Khủa', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4631', '3031919', 'Chiềng Hắc', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4632', '3031921', 'Hua Păng', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4633', '3031923', 'Tô Múa', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4634', '3031925', 'Mường Tè', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4635', '3031927', 'Chiềng Khừa', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4636', '3031929', 'Mường Sang', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4637', '3031931', 'Phiêng Luông', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4638', '3031933', 'Chiềng Khoa', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4639', '3031935', 'Mường Men', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4640', '3031937', 'Quang Minh', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4641', '3031939', 'Lóng Sập', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4642', '3031941', 'Vân Hồ', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4643', '3031943', 'Lóng Luông', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4644', '3031945', 'Chiềng Yên', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4645', '3031947', 'Xuân Nha', '', '238', '0');
INSERT INTO `dm_xa` VALUES ('4646', '3050101', 'Phương Lâm', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4647', '3050103', 'Đồng Tiến', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4648', '3050105', 'Chăm Mát', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4649', '3050107', 'Tân Thịnh', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4650', '3050109', 'Tân Hòa', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4651', '3050111', 'Hữu Nghị', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4652', '3050113', 'Yên Mông', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4653', '3050115', 'Hòa Bình', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4654', '3050117', 'Thịnh Lang', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4655', '3050119', 'Sủ Ngòi', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4656', '3050121', 'Dân Chủ', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4657', '3050123', 'Thái Thịnh', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4658', '3050125', 'Thái Bình', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4659', '3050127', 'Thống Nhất', '', '239', '0');
INSERT INTO `dm_xa` VALUES ('4660', '3050301', 'Thị trấn Đà Bắc', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4661', '3050303', 'Đồng Nghê', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4662', '3050305', 'Suối Nánh', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4663', '3050307', 'Mường Tuổng', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4664', '3050309', 'Giáp Đắt', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4665', '3050311', 'Mường Chiềng', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4666', '3050313', 'Tân Pheo', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4667', '3050315', 'Đồng Chum', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4668', '3050317', 'Đoàn Kết', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4669', '3050319', 'Đồng Ruộng', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4670', '3050321', 'Tân Minh', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4671', '3050323', 'Tu Lý', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4672', '3050325', 'Hào Lý', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4673', '3050327', 'Trung Thành', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4674', '3050329', 'Toàn Sơn', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4675', '3050331', 'Yên Hòa', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4676', '3050333', 'Tân Dân', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4677', '3050335', 'Hiền Lương', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4678', '3050337', 'Cao Sơn', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4679', '3050339', 'Tiền Phong', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4680', '3050341', 'Vầy Nưa', '', '240', '0');
INSERT INTO `dm_xa` VALUES ('4681', '3050501', 'Thị trấn Mai Châu', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4682', '3050503', 'Tân Mai', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4683', '3050505', 'Phúc Sạn', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4684', '3050507', 'Pà Cò', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4685', '3050509', 'Hang Kia', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4686', '3050511', 'Ba Khan', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4687', '3050513', 'Bao La', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4688', '3050515', 'Piềng Vế', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4689', '3050517', 'Đồng Bảng', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4690', '3050519', 'Cun Pheo', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4691', '3050521', 'Tòng Đậu', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4692', '3050523', 'Nà Mèo', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4693', '3050525', 'Thung Khe', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4694', '3050527', 'Săm Khóe', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4695', '3050529', 'Nà Phòn', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4696', '3050531', 'Chiềng Châu', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4697', '3050533', 'Mai Hạ', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4698', '3050535', 'Mai Hịch', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4699', '3050537', 'Nong Luông', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4700', '3050539', 'Pù Pin', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4701', '3050541', 'Vạn Mai', '', '241', '0');
INSERT INTO `dm_xa` VALUES ('4702', '3050701', 'Thị trấn Kỳ Sơn', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4703', '3050703', 'Thị trấn Cao Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4704', '3050705', 'Hợp Thịnh', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4705', '3050707', 'Phú Minh', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4706', '3050709', 'Hợp Thành', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4707', '3050711', 'Phúc Tiến', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4708', '3050713', 'Dân Hòa', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4709', '3050715', 'Mông Hóa', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4710', '3050717', 'Dân Hạ', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4711', '3050719', 'Trung Minh', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4712', '3050721', 'Độc Lập', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4713', '3050723', 'Bình Thanh', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4714', '3050725', 'Thung Nai', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4715', '3050727', 'Bắc Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4716', '3050729', 'Thu Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4717', '3050731', 'Đông Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4718', '3050733', 'Xuân Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4719', '3050735', 'Tân Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4720', '3050737', 'Tây Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4721', '3050739', 'Dũng Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4722', '3050741', 'Nam Phong', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4723', '3050743', 'Yên Lập', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4724', '3050745', 'Yên Thượng', '', '242', '0');
INSERT INTO `dm_xa` VALUES ('4725', '3050907', 'Yên Quang', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4726', '3050909', 'Tiến Xuân', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4727', '3050913', 'Lâm Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4728', '3050917', 'Trường Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4729', '3050921', 'Nhuận Trạch', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4730', '3050925', 'Cư Yên', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4731', '3050933', 'Tiến Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4732', '3050935', 'Trung Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4733', '3051101', 'Thị trấn Bo', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4734', '3051103', 'Thị trấn NT Thanh Hà', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4735', '3051119', 'Vĩnh Tiến', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4736', '3051121', 'Sơn Thủy', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4737', '3051123', 'Cao Dương', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4738', '3051125', 'Hạ Bì', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4739', '3051127', 'Đông Bắc', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4740', '3051129', 'Lập Chiệng', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4741', '3051133', 'Vĩnh Đồng', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4742', '3051143', 'Cao Thắng', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4743', '3051147', 'Kim Tiến', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4744', '3051151', 'Thanh Lương', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4745', '3051153', 'Kim Bôi', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4746', '3051155', 'Hợp Thanh', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4747', '3051157', 'Nam Thượng', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4748', '3051161', 'Kim Truy', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4749', '3051163', 'Sào Báy', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4750', '3051169', 'Nuông Dăm', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4751', '3051301', 'Thị trấn Mường Khến', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4752', '3051303', 'Ngòi Hoa', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4753', '3051305', 'Trung Hòa', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4754', '3051307', 'Phú Vinh', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4755', '3051309', 'Phú Cường', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4756', '3051311', 'Mỹ Hòa', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4757', '3051313', 'Quy Hậu', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4758', '3051319', 'Quyết Chiến', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4759', '3051325', 'Tử Nê', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4760', '3050901', 'Thị trấn Lương Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4761', '3050903', 'Yên Bình', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4762', '3050911', 'Đông Xuân', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4763', '3050915', 'Hòa Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4764', '3050923', 'Cao Răm', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4765', '3050929', 'Liên Sơn', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4766', '3050931', 'Thành Lập', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4767', '3051105', 'Đú Sáng', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4768', '3051107', 'Bắc Sơn', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4769', '3051109', 'Bình Sơn', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4770', '3051111', 'Hùng Tiến', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4771', '3051113', 'Tân Thành', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4772', '3051131', 'Hợp Châu', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4773', '3051135', 'Kim Sơn', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4774', '3051141', 'Thượng Tiến', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4775', '3051165', 'Cuối Hạ', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4776', '3051167', 'Mi Hòa', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4777', '3051315', 'Phong Phú', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4778', '3051317', 'Mãn Đức', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4779', '3051327', 'Ngọc Mỹ', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4780', '3051331', 'Đông Lai', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4781', '3051333', 'Bắc Sơn', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4782', '3051339', 'Do Nhân', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4783', '3051341', 'Nam Sơn', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4784', '3051343', 'Lỗ Sơn', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4785', '3051347', 'Gia Mô', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('4786', '3051505', 'Miền Đồi', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4787', '3051507', 'Mỹ Thành', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4788', '3051509', 'Tuân Đạo', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4789', '3051511', 'Văn Nghĩa', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4790', '3051513', 'Văn Sơn', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4791', '3051515', 'Tân Lập', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4792', '3051521', 'Phú Lương', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4793', '3051525', 'Xuất Hóa', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4794', '3051529', 'Bình Hẻm', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4795', '3051531', 'Chí Đạo', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4796', '3051535', 'Bình Cảng', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4797', '3051537', 'Bình Chân', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4798', '3051551', 'Vũ Lâm', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4799', '3051553', 'Tân Mỹ', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4800', '3051555', 'Ân Nghĩa', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4801', '3051559', 'Ngọc Lâu', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4802', '3051705', 'Phú Lão', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4803', '3051707', 'Phú Thành', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4804', '3051709', 'Cố Nghĩa', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4805', '3051717', 'Khoan Dụ', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4806', '3051719', 'Đồng Môn', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4807', '3051721', 'Đồng Tâm', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4808', '3051723', 'Yên Bồng', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4809', '3051725', 'An Lạc', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4810', '3051727', 'An Bình', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4811', '3051911', 'Hữu Lợi', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('4812', '3051913', 'Lạc Thịnh', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('4813', '3051917', 'Phú Lai', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('4814', '3051919', 'Đoàn Kết', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('4815', '3051923', 'Ngọc Lương', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('4816', '4010117', 'Phú Sơn', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4817', '4010119', 'Đông Vệ', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4818', '4010121', 'Đông Thọ', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4819', '4010123', 'Đông Hương', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4820', '4010125', 'Đông Hải', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4821', '4010127', 'Quảng Thắng', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4822', '4010303', 'Ngọc Trạo', '', '250', '0');
INSERT INTO `dm_xa` VALUES ('4823', '4010307', 'Lam Sơn', '', '250', '0');
INSERT INTO `dm_xa` VALUES ('4824', '4010309', 'Quang Trung', '', '250', '0');
INSERT INTO `dm_xa` VALUES ('4825', '4010505', 'Trung Sơn', '', '251', '0');
INSERT INTO `dm_xa` VALUES ('4826', '4010509', 'Quảng Cư', '', '251', '0');
INSERT INTO `dm_xa` VALUES ('4827', '4010705', 'Tam Chung', '', '252', '0');
INSERT INTO `dm_xa` VALUES ('4828', '4010709', 'Quang Chiểu', '', '252', '0');
INSERT INTO `dm_xa` VALUES ('4829', '4010901', 'Thị trấn Quan Hóa', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4830', '4010905', 'Nam Động', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4831', '4010909', 'Hiền Kiệt', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4832', '4010911', 'Phú Nghiêm', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4833', '4010913', 'Nam Tiến', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4834', '4010915', 'Phú Lệ', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4835', '4010917', 'Hồi Xuân', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4836', '4010923', 'Phú Xuân', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4837', '4010931', 'Trung Sơn', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4838', '4011101', 'Trung Xuân', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4839', '4011103', 'Trung Thượng', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4840', '4011105', 'Trung Hạ', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4841', '4011109', 'Tam Thanh', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4842', '4011111', 'Sơn Thủy', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4843', '4011115', 'Tam Lư', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4844', '4011117', 'Sơn Điện', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('4845', '4011303', 'Điền Thượng', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4846', '4011307', 'Điền Quang', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4847', '4011315', 'ái Thượng', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4848', '4011321', 'Lương Trung', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4849', '4011323', 'Lũng Niêm', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4850', '4011327', 'Hạ Trung', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4851', '4011335', 'Kỳ Tân', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4852', '4011337', 'Văn Nho', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4853', '4011341', 'Lâm Sa', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4854', '4011343', 'Thiết Kế', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4855', '4011345', 'Tân Lập', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4856', '4011501', 'Thị trấn Cẩm Thủy', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4857', '4011503', 'Thị trấn NT Phúc Do', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4858', '4011505', 'Cẩm Thành', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4859', '4011511', 'Cẩm Thạch', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4860', '4011513', 'Cẩm Liên', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4861', '4011517', 'Cẩm Bình', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4862', '4011523', 'Cẩm Châu', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4863', '4011525', 'Cẩm Tâm', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4864', '4011527', 'Cẩm Phong', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4865', '4011529', 'Cẩm Ngọc', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4866', '4011533', 'Cẩm Yên', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4867', '4011537', 'Cẩm Phú', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4868', '4011701', 'Thị trấn Lang Chánh', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('4869', '4011703', 'Yên Khương', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('4870', '4011707', 'Trí Nang', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('4871', '4011711', 'Giao Thiện', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('4872', '4011719', 'Quang Hiến', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('4873', '4011721', 'Đồng Lương', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('4874', '4011905', 'Thị trấn NT Vân Du', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4875', '4011913', 'Thạch Cẩm', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4876', '4011915', 'Thạch Sơn', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4877', '4011917', 'Thạch Bình', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4878', '4011921', 'Thạch Đồng', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4879', '4011923', 'Thạch Long', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4880', '3050905', 'Yên Trung', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4881', '3050919', 'Tân Vinh', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('4882', '3051117', 'Nật Sơn', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4883', '3051137', 'Hợp Đồng', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4884', '3051145', 'Kim Bình', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4885', '3051159', 'Thanh Nông', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('4886', '3051501', 'Thị trấn Vụ Bản', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4887', '3051517', 'Nhân Nghĩa', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4888', '3051549', 'Tự Do', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('4889', '3051701', 'Thị trấn Chi Nê', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4890', '3051713', 'Lạc Long', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('4891', '3051903', 'Lạc Sỹ', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('4892', '4010101', 'Hàm Rồng', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4893', '4010105', 'Trường Thi', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4894', '4010115', 'Ngọc Trạo', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('4895', '4010701', 'Trung Lý', '', '252', '0');
INSERT INTO `dm_xa` VALUES ('4896', '4010711', 'Mường Chanh', '', '252', '0');
INSERT INTO `dm_xa` VALUES ('4897', '4010907', 'Hiền Chung', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4898', '4010921', 'Phú Thanh', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4899', '4010929', 'Thanh Xuân', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4900', '4010935', 'Xuân Phú', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('4901', '4011301', 'Thị trấn Cành Nàng', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4902', '4011311', 'Thành Sơn', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4903', '4011319', 'Điền Lư', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4904', '4011331', 'Thành Lâm', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('4905', '4011509', 'Cẩm Lương', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('4906', '4011919', 'Thạch Định', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4907', '4011927', 'Thành Yên', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4908', '4011929', 'Thành Vinh', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4909', '4011931', 'Thành Minh', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4910', '4011935', 'Thành Tân', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4911', '4011937', 'Thành Trực', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4912', '4011939', 'Thành Vân', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4913', '4011945', 'Thành Thọ', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4914', '4011949', 'Thành Long', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4915', '4011951', 'Thành Kim', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4916', '4011953', 'Thành Hưng', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4917', '4011955', 'Ngọc Trạo', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('4918', '4012101', 'Thị trấn Ngọc Lạc', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4919', '4012103', 'Thị trấn NT Lam Sơn', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4920', '4012107', 'Mỹ Tân', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4921', '4012109', 'Thúy Sơn', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4922', '4012113', 'Vân Âm', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4923', '4012119', 'Quang Trung', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4924', '4012121', 'Đông Thịnh', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4925', '4012131', 'Ngọc Trung', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4926', '4012133', 'Phùng Giáo', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4927', '4012139', 'Nguyệt ấn', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4928', '4012143', 'Minh Tiến', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('4929', '4012301', 'Thị trấn Thường Xuân', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4930', '4012307', 'Xuân Khao', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4931', '4012311', 'Xuân Lẹ', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4932', '4012317', 'Lương Sơn', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4933', '4012321', 'Luận Thành', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4934', '4012323', 'Luận Khê', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4935', '4012327', 'Xuân Lộc', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4936', '4012333', 'Thọ Thanh', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4937', '4012335', 'Ngọc Phụng', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4938', '4012337', 'Xuân Chinh', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('4939', '4012503', 'Thị trấn Bãi Trành', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4940', '4012505', 'Xuân Bình', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4941', '4012509', 'Xuân Quỳ', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4942', '4012511', 'Yên Lễ', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4943', '4012513', 'Cát Vân', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4944', '4012515', 'Cát Tân', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4945', '4012519', 'Bình Lương', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4946', '4012521', 'Thanh Quân', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('4947', '4012703', 'Thanh Tân', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4948', '4012705', 'Xuân Thái', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4949', '4012707', 'Yên Lạc', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4950', '4012715', 'Xuân Thọ', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4951', '4012721', 'Phú Nhuận', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4952', '4012723', 'Mậu Lâm', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4953', '4012729', 'Cán Khê', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('4954', '4012901', 'Thị trấn Vĩnh Lộc', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4955', '4012903', 'Vĩnh Thành', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4956', '4012905', 'Vĩnh Quang', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4957', '4012907', 'Vĩnh Yên', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4958', '4012909', 'Vĩnh Tiến', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4959', '4012917', 'Vĩnh Minh', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4960', '4012919', 'Vĩnh Khang', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4961', '4012921', 'Vĩnh Hòa', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4962', '4012931', 'Vĩnh An', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('4963', '4013113', 'Hà Thanh', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4964', '4013123', 'Hà Ngọc', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4965', '4013131', 'Hà Lĩnh', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4966', '4013133', 'Hà Đông', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4967', '4013137', 'Hà Tiến', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4968', '4013141', 'Hà Lai', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4969', '4013143', 'Hà Châu', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4970', '4013145', 'Hà Toại', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4971', '4013147', 'Hà Thái', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('4972', '4013303', 'Ba Đình', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4973', '4013309', 'Nga Thiện', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4974', '4013315', 'Nga Nhân', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4975', '4013317', 'Nga Trung', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4976', '4013319', 'Nga Bạch', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4977', '4013325', 'Nga Mỹ', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4978', '4013327', 'Nga Yên', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4979', '4013333', 'Nga Thành', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4980', '4013335', 'Nga An', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4981', '4013337', 'Nga Phú', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4982', '4013343', 'Nga Thủy', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4983', '4013347', 'Nga Thái', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4984', '4013351', 'Nga Thắng', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('4985', '4013501', 'Thị trấn Quán Lào', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4986', '4013503', 'Thị trấn NT Thống Nhất', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4987', '4013505', 'Yên Phú', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4988', '4013507', 'Yên Lâm', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4989', '4013509', 'Yên Tâm', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4990', '4013511', 'Yên Giang', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4991', '4013513', 'Yên Qúi', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4992', '4013515', 'Yên Thọ', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4993', '4013523', 'Yên Phong', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4994', '4013525', 'Yên Thái', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4995', '4013529', 'Yên Thịnh', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4996', '4013537', 'Định Hòa', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4997', '4013539', 'Định Thành', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4998', '4013541', 'Định Công', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('4999', '3050927', 'Hợp Hòa', '', '243', '0');
INSERT INTO `dm_xa` VALUES ('5000', '3051115', 'Tú Sơn', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('5001', '3051139', 'Long Sơn', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('5002', '3051149', 'Hợp Kim', '', '244', '0');
INSERT INTO `dm_xa` VALUES ('5003', '3051321', 'Địch Giáo', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('5004', '3051323', 'Tuân Lộ', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('5005', '3051329', 'Thanh Hối', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('5006', '3051337', 'Quy Mỹ', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('5007', '3051543', 'Liên Vũ', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5008', '3051905', 'Lạc Hưng', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('5009', '4010103', 'Nam Ngạn', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5010', '4010703', 'Tén Tằn', '', '252', '0');
INSERT INTO `dm_xa` VALUES ('5011', '4010927', 'Trung Thành', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('5012', '4011339', 'Thiết ống', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5013', '4011531', 'Cẩm Long', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5014', '4011713', 'Tân Phúc', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('5015', '4011943', 'Thành An', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5016', '4012135', 'Phùng Minh', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5017', '4012313', 'Vạn Xuân', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5018', '4012523', 'Thanh Xuân', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5019', '4012927', 'Vĩnh Ninh', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5020', '4013305', 'Nga Vịnh', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5021', '4013353', 'Nga Trường', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5022', '4013517', 'Yên Trung', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5023', '4013531', 'Yên Ninh', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5024', '4013533', 'Yên Lạc', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5025', '4013545', 'Định Tiến', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5026', '4013551', 'Định Tường', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5027', '4013553', 'Hưng Hùng', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5028', '4013555', 'Định Hải', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5029', '4013557', 'Định Bình', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5030', '4013701', 'Thị trấn Thọ Xuân', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5031', '4013705', 'Thị trấn NT Sao Vàng', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5032', '4013707', 'Xuân Khánh', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5033', '4013709', 'Thọ Nguyên', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5034', '4013711', 'Xuân Thành', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5035', '4013713', 'Hạnh Phúc', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5036', '4013715', 'Bắc Lương', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5037', '4013717', 'Nam Giang', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5038', '4013719', 'Xuân Phong', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5039', '4013721', 'Thọ Lộc', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5040', '4013733', 'Xuân Quang', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5041', '4013735', 'Xuân Sơn', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5042', '4013741', 'Thọ Lâm', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5043', '4013743', 'Thọ Xương', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5044', '4013745', 'Xuân Bái', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5045', '4013747', 'Xuân Phú', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5046', '4013749', 'Xuân Thắng', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5047', '4013755', 'Thọ Minh', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5048', '4013757', 'Xuân Châu', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5049', '4013763', 'Xuân Tiến', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5050', '4013765', 'Phú Yên', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5051', '4013767', 'Xuân Yên', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5052', '4013777', 'Xuân Tân', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5053', '4013901', 'Thị trấn Hậu Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5054', '4013905', 'Đại Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5055', '4013907', 'Triệu Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5056', '4013913', 'Lộc Sơn', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5057', '4013919', 'Tuy Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5058', '4013921', 'Phong Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5059', '4013923', 'Mỹ Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5060', '4013925', 'Văn Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5061', '4013927', 'Thuần Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5062', '4013935', 'Hoa Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5063', '4013939', 'Quang Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5064', '4013941', 'Phú Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5065', '4014107', 'Thiệu Tiến', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5066', '4014109', 'Thiệu Công', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5067', '4014111', 'Thiệu Phú', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5068', '4014115', 'Thiệu Long', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5069', '4014119', 'Thiệu Duy', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5070', '4014121', 'Thiệu Nguyên', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5071', '4014129', 'Thiệu Thành', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5072', '4014133', 'Thiệu Chính', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5073', '4014137', 'Thiệu Minh', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5074', '4014141', 'Thiệu Viên', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5075', '4014143', 'Thiệu Lý', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5076', '4014151', 'Thiệu Châu', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5077', '4014153', 'Thiệu Vân', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5078', '4014155', 'Thiệu Giao', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5079', '4014305', 'Hoằng Xuân', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5080', '4014307', 'Hoằng Khánh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5081', '4014309', 'Hoằng Phượng', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5082', '4014311', 'Hoằng Phú', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5083', '4014315', 'Hoằng Kim', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5084', '4014319', 'Hoằng Trinh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5085', '4014323', 'Hoằng Lương', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5086', '4014325', 'Hoằng Xuyên', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5087', '4014329', 'Hoằng Khê', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5088', '4014333', 'Hoằng Quý', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5089', '4014337', 'Hoằng Long', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5090', '4014339', 'Hoằng Quang', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5091', '4014359', 'Hoằng Thái', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5092', '4014363', 'Hoằng Thành', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5093', '4014371', 'Hoằng Phong', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5094', '4014381', 'Hoằng Tiến', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5095', '4014383', 'Hoằng Hải', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5096', '4014385', 'Hoằng Ngọc', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5097', '4014503', 'Đông Hoàng', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5098', '4014505', 'Đông Ninh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5099', '4014507', 'Đông Khê', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5100', '4014509', 'Đông Hoà', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5101', '4014513', 'Đông Lĩnh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5102', '4014517', 'Đông Thanh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5103', '4014521', 'Đông Anh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5104', '4014525', 'Đông Thịnh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5105', '4014527', 'Đông Văn', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5106', '4014533', 'Đông Quang', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5107', '4014537', 'Đông Tân', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5108', '4014705', 'Thọ Bình', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5109', '4014715', 'Triệu Thành', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5110', '4014717', 'Hợp Thắng', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5111', '4014727', 'Dân Lý', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5112', '4014733', 'Văn Sơn', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5113', '4014741', 'Đồng Tiến', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5114', '4014743', 'Đồng Thắng', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5115', '4014745', 'Tiến Nông', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5116', '4014747', 'Khuyến Nông', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5117', '4014749', 'Xuân Thịnh', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5118', '3051335', 'Lũng Vân', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('5119', '3051345', 'Ngổ Luông', '', '245', '0');
INSERT INTO `dm_xa` VALUES ('5120', '3051533', 'Chí Thiện', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5121', '3051909', 'Bảo Hiệu', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('5122', '4010109', 'Điện Biên', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5123', '4010111', 'Lam Sơn', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5124', '4010131', 'Quảng Thành', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5125', '4010919', 'Phú Sơn', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('5126', '4011329', 'Cổ Lũng', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5127', '4011535', 'Cẩm Tân', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5128', '4011715', 'Tam Văn', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('5129', '4011941', 'Thành Tâm', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5130', '4012123', 'Ngọc Liên', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5131', '4012141', 'Kiên Thọ', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5132', '4012315', 'Xuân Mỹ', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5133', '4012319', 'Xuân Cao', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5134', '4012329', 'Xuân Cẩm', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5135', '4012527', 'Thanh Lâm', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5136', '4012701', 'Thanh Kỳ', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5137', '4012923', 'Vĩnh Hùng', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5138', '4013121', 'Hà Phong', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5139', '4013127', 'Hà Lâm', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5140', '4013135', 'Hà Tân', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5141', '4013339', 'Nga Điền', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5142', '4013521', 'Yên Bái', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5143', '4013527', 'Yên Hùng', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5144', '4013751', 'Xuân Lam', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5145', '4013947', 'Hưng Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5146', '4013951', 'Đa Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5147', '4014117', 'Thiệu Giang', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5148', '4014123', 'Thiệu Hợp', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5149', '4014131', 'Thiệu Toán', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5150', '4014139', 'Thiệu Tâm', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5151', '4014147', 'Thiệu Trung', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5152', '4014335', 'Hoằng Hợp', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5153', '4014341', 'Hoằng Minh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5154', '4014355', 'Hoằng Thắng', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5155', '4014365', 'Hoằng Lộc', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5156', '4014367', 'Hoằng Trạch', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5157', '4014515', 'Đông Minh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5158', '4014731', 'An Nông', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5159', '4014739', 'Đồng Lợi', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5160', '4014757', 'Thọ Tân', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5161', '4014759', 'Thọ Ngọc', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5162', '4014763', 'Thọ Phú', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5163', '4014765', 'Thọ Vực', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5164', '4014769', 'Nông Trường', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5165', '4014771', 'Bình Sơn', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5166', '4014901', 'Thị trấn Quảng Sơn', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5167', '4014903', 'Quảng Thịnh', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5168', '4014905', 'Quảng Tân', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5169', '4014907', 'Quảng Trạch', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5170', '4014909', 'Quảng Phong', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5171', '4014913', 'Quảng Định', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5172', '4014919', 'Quảng Ninh', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5173', '4014923', 'Quảng Hợp', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5174', '4014925', 'Quảng Văn', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5175', '4014927', 'Quảng Long', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5176', '4014929', 'Quảng Yên', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5177', '4014933', 'Quảng Lĩnh', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5178', '4014935', 'Quảng Khê', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5179', '4014937', 'Quảng Trung', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5180', '4014943', 'Quảng Trường', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5181', '4014945', 'Quảng Phúc', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5182', '4014963', 'Quảng Châu', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5183', '4014967', 'Quảng Đại', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5184', '4014969', 'Quảng Hải', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5185', '4014971', 'Quảng Lưu', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5186', '4014973', 'Quảng Lộc', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5187', '4014979', 'Quảng Thạch', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5188', '4014981', 'Quảng Thái', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5189', '4015101', 'Thị trấn Nông Cống', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5190', '4015103', 'Thị trấn Yên Mỹ', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5191', '4015105', 'Tân Phúc', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5192', '4015107', 'Tân Thọ', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5193', '4015111', 'Trung Chính', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5194', '4015115', 'Trung ý', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5195', '4015117', 'Hoàng Giang', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5196', '4015119', 'Hoàng Sơn', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5197', '4015127', 'Tế Thắng', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5198', '4015129', 'Minh Khôi', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5199', '4015133', 'Minh Thọ', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5200', '4015141', 'Thăng Long', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5201', '4015143', 'Thăng Thọ', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5202', '4015149', 'Công Chính', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5203', '4015151', 'Công Bình', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5204', '4015153', 'Tượng Văn', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5205', '4015157', 'Tượng Sơn', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5206', '4015163', 'TrườngTrung', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5207', '4015165', 'Trường Minh', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5208', '4015267', 'Nghi Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('5209', '4015305', 'Thanh Thuỷ', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5210', '4015309', 'Ngọc Lĩnh', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5211', '4015311', 'Các Sơn', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5212', '4015313', 'Anh Sơn', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5213', '4015317', 'Định Hải', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5214', '4015319', 'Hải Nhân', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5215', '4015321', 'Nguyên Bình', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5216', '4015325', 'Phú Lâm', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5217', '4015327', 'Phú Sơn', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5218', '4015331', 'Tùng Lâm', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5219', '4015339', 'Hải Ninh', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5220', '4015343', 'Tân Dân', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5221', '4015345', 'Hải Lĩnh', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5222', '4015349', 'Hải Hoà', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5223', '4015359', 'Hải Yến', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5224', '4015361', 'Mai Lâm', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5225', '4015363', 'Hải Thượng', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5226', '4015365', 'Hải Hà', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5227', '4030101', 'Lê Mao', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5228', '4030107', 'Lê Lợi', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5229', '4030111', 'Cửa Nam', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5230', '4030121', 'Bến Thủy', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5231', '4030123', 'Đông Vĩnh', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5232', '4030127', 'Nghi Phú', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5233', '4030135', 'Vinh Tân', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5234', '4030301', 'Nghi Tân', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5235', '4030303', 'Nghi Thuỷ', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5236', '4030305', 'Thu Thuỷ', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5237', '3051503', 'Quý Hòa', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5238', '3051519', 'Thượng Cốc', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5239', '3051523', 'Phúc Tuy', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5240', '3051527', 'Yên Phú', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5241', '3051539', 'Định Cư', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5242', '3051541', 'Hương Nhượng', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5243', '3051545', 'Đa Phúc', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5244', '3051547', 'Ngọc Sơn', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5245', '3051557', 'Yên Nghiệp', '', '246', '0');
INSERT INTO `dm_xa` VALUES ('5246', '3051703', 'Thị trấn NT Sông Bôi', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('5247', '3051711', 'Hưng Thi', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('5248', '3051715', 'Liên Hòa', '', '247', '0');
INSERT INTO `dm_xa` VALUES ('5249', '3051901', 'Thị trấn Hàng Trạm', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('5250', '3051907', 'Lạc Lương', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('5251', '3051915', 'Yên Lạc', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('5252', '3051921', 'Yên Trị', '', '248', '0');
INSERT INTO `dm_xa` VALUES ('5253', '4010107', 'Đông Sơn', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5254', '4010113', 'Ba Đình', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5255', '4010129', 'Đông Cương', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5256', '4010133', 'Quảng Hưng', '', '249', '0');
INSERT INTO `dm_xa` VALUES ('5257', '4010301', 'Bắc Sơn', '', '250', '0');
INSERT INTO `dm_xa` VALUES ('5258', '4010305', 'Ba Đình', '', '250', '0');
INSERT INTO `dm_xa` VALUES ('5259', '4010311', 'Hà Lan', '', '250', '0');
INSERT INTO `dm_xa` VALUES ('5260', '4010501', 'Bắc Sơn', '', '251', '0');
INSERT INTO `dm_xa` VALUES ('5261', '4010503', 'Trường Sơn', '', '251', '0');
INSERT INTO `dm_xa` VALUES ('5262', '4010507', 'Quảng Tiến', '', '251', '0');
INSERT INTO `dm_xa` VALUES ('5263', '4010707', 'Phù Nhi', '', '252', '0');
INSERT INTO `dm_xa` VALUES ('5264', '4010903', 'Thiên Phú', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('5265', '4010925', 'Thanh Sơn', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('5266', '4010933', 'Nam Xuân', '', '253', '0');
INSERT INTO `dm_xa` VALUES ('5267', '4011107', 'Sơn Hà', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('5268', '4011113', 'Sơn Lư', '', '254', '0');
INSERT INTO `dm_xa` VALUES ('5269', '4011305', 'Điền Hạ', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5270', '4011309', 'Điền Trung', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5271', '4011313', 'Lương Ngoại', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5272', '4011317', 'Lương Nội', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5273', '4011325', 'Lũng Cao', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5274', '4011333', 'Ban Công', '', '255', '0');
INSERT INTO `dm_xa` VALUES ('5275', '4011507', 'Cẩm Quý', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5276', '4011515', 'Cẩm Giang', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5277', '4011519', 'Cẩm Tú', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5278', '4011521', 'Cẩm Sơn', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5279', '4011539', 'Cẩm Vân', '', '256', '0');
INSERT INTO `dm_xa` VALUES ('5280', '4011705', 'Yên Thắng', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('5281', '4011709', 'Giao An', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('5282', '4011717', 'Lâm Phú', '', '257', '0');
INSERT INTO `dm_xa` VALUES ('5283', '4011901', 'Thị trấn NT Thạch Thành', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5284', '4011903', 'Thị trấn Kim Tân', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5285', '4011907', 'Thạch Lâm', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5286', '4011909', 'Thạch Quảng', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5287', '4011911', 'Thạch Tượng', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5288', '4011933', 'Thành Công', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5289', '4011947', 'Thành Tiến', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5290', '4012111', 'Thạch Lập', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5291', '4012117', 'Ngọc Khê', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5292', '4012125', 'Ngọc Sơn', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5293', '4012127', 'Lộc Thịnh', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5294', '4012137', 'Phúc Thịnh', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5295', '4012145', 'Minh Sơn', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5296', '4012303', 'Bát Mọt', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5297', '4012309', 'Xuân Liên', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5298', '4012325', 'Xuân Thắng', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5299', '4012501', 'Thị trấn Yên Cát', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5300', '4012525', 'Thanh Phong', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5301', '4012531', 'Thượng Ninh', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5302', '4012709', 'Yên Thọ', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5303', '4012713', 'Phúc Đường', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5304', '4012717', 'Xuân Khang', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5305', '4012719', 'Hải Long', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5306', '4012725', 'Phượng Nghi', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5307', '4012727', 'Xuân Du', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5308', '4012731', 'Hải Vân', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5309', '4012913', 'Vĩnh Phúc', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5310', '4012915', 'Vĩnh Hưng', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5311', '4012925', 'Vĩnh Tân', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5312', '4013103', 'Hà Long', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5313', '4013107', 'Hà Bắc', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5314', '4013109', 'Hà Vân', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5315', '4013111', 'Hà Yên', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5316', '4013115', 'Hà Giang', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5317', '4013119', 'Hà Phú', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5318', '4013129', 'Hà Sơn', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5319', '4013139', 'Hà Bình', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5320', '4013301', 'Thị trấn Nga Sơn', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5321', '4013307', 'Nga Văn', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5322', '4013313', 'Nga Lĩnh', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5323', '4013321', 'Nga Thanh', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5324', '4013323', 'Nga Hưng', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5325', '4013329', 'Nga Giáp', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5326', '4013331', 'Nga Hải', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5327', '4013341', 'Nga Tân', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5328', '4013345', 'Nga Liên', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5329', '4013519', 'Yên Trường', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5330', '4013535', 'Định Tăng', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5331', '4013547', 'Định Long', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5332', '4013549', 'Định Liên', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5333', '4013703', 'Thị trấn Lam Sơn', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5334', '4013723', 'Xuân Trường', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5335', '4013727', 'Thọ Hải', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5336', '4013729', 'Tây Hồ', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5337', '4013739', 'Thọ Diên', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5338', '4013753', 'Xuân Thiên', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5339', '4013759', 'Thọ Lập', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5340', '4013769', 'Xuân Lai', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5341', '4013771', 'Xuân Lập', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5342', '4013775', 'Xuân Minh', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5343', '4013911', 'Tiến Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5344', '4013915', 'Cầu Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5345', '4013929', 'Lộc Tân', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5346', '4013949', 'Hải Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5347', '4013953', 'Ngư Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5348', '4014101', 'Thiệu Ngọc', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5349', '4014113', 'Thiệu Hưng', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5350', '4014125', 'Thiệu Thịnh', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5351', '4014127', 'Thiệu Quang', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5352', '4014135', 'Thiệu Hoà', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5353', '4014159', 'Thiệu Dương', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5354', '4014317', 'Hoằng Trung', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5355', '4014321', 'Hoằng Sơn', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5356', '4011925', 'Thành Mỹ', '', '258', '0');
INSERT INTO `dm_xa` VALUES ('5357', '4012105', 'Thị trấn NT Sông Âm', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5358', '4012129', 'Cao Thịnh', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5359', '4012305', 'Yên Nhân', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5360', '4012507', 'Hóa Quỳ', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5361', '4012529', 'Thanh Sơn', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5362', '4012711', 'Xuân Phúc', '', '262', '0');
INSERT INTO `dm_xa` VALUES ('5363', '4012929', 'Vĩnh Thịnh', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5364', '4013117', 'Hà Dương', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5365', '4013125', 'Hà Ninh', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5366', '4013349', 'Nga Thạch', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5367', '4013543', 'Định Tân', '', '266', '0');
INSERT INTO `dm_xa` VALUES ('5368', '4013725', 'Xuân Hòa', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5369', '4013731', 'Xuân Giang', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5370', '4013737', 'Xuân Hưng', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5371', '4013773', 'Thọ Thắng', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5372', '4013917', 'Thành Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5373', '4013933', 'Thịnh Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5374', '4013937', 'Liên Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5375', '4013943', 'Hoà Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5376', '4014149', 'Thiệu Đô', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5377', '4014313', 'Hoằng Quỳ', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5378', '4014331', 'Hoằng Lý', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5379', '4014343', 'Hoằng Phúc', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5380', '4014345', 'Hoằng Đức', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5381', '4014347', 'Hoằng Hà', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5382', '4014351', 'Hoằng Vinh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5383', '4014353', 'Hoằng Đạo', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5384', '4014357', 'Hoằng Đồng', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5385', '4014369', 'Hoằng Đại', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5386', '4014373', 'Hoằng Lưu', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5387', '4014377', 'Hoằng Tân', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5388', '4014379', 'Hoằng Yến', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5389', '4014387', 'Hoằng Đông', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5390', '4014389', 'Hoằng Thanh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5391', '4014391', 'Hoằng Phụ', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5392', '4014393', 'Hoằng Trường', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5393', '4014395', 'Hoằng Anh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5394', '4014501', 'Thị trấn Rừng Thông', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5395', '4014523', 'Đông Xuân', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5396', '4014529', 'Đông Phú', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5397', '4014531', 'Đông Nam', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5398', '4014535', 'Đông Vinh', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5399', '4014539', 'Đông Hưng', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5400', '4014701', 'Thị trấn Thiệu Sơn', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5401', '4014703', 'Thọ Sơn', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5402', '4014707', 'Thọ Tiến', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5403', '4014709', 'Hợp Lý', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5404', '4014713', 'Hợp Thành', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5405', '4014719', 'Minh Sơn', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5406', '4014721', 'Minh Dân', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5407', '4014723', 'Minh Châu', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5408', '4014725', 'Dân Lực', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5409', '4014729', 'Dân Quyền', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5410', '4014735', 'Thái Hoà', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5411', '4014737', 'Tân Ninh', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5412', '4014751', 'Xuân Lộc', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5413', '4014753', 'Thọ Dân', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5414', '4014755', 'Xuân Thọ', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5415', '4014767', 'Thọ Thế', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5416', '4014915', 'Quảng Đông', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5417', '4014917', 'Quảng Nhân', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5418', '4014921', 'Quảng Bình', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5419', '4014939', 'Quảng Chính', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5420', '4014947', 'Quảng Cát', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5421', '4014951', 'Quảng Minh', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5422', '4014953', 'Quảng Hùng', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5423', '4014955', 'Quảng Giao', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5424', '4014957', 'Quảng Phú', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5425', '4014959', 'Quảng Tâm', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5426', '4014965', 'Quảng Vinh', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5427', '4014975', 'Quảng Lợi', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5428', '4014977', 'Quảng Nham', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5429', '4015109', 'Tân Khang', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5430', '4015113', 'Trung Thành', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5431', '4015121', 'Tế Nông', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5432', '4015125', 'Tế Lợi', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5433', '4015131', 'Minh Nghĩa', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5434', '4015135', 'Vạn Thắng', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5435', '4015137', 'Vạn Hoà', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5436', '4015145', 'Thăng Bình', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5437', '4015147', 'Công Liêm', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5438', '4015155', 'Tượng Lĩnh', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5439', '4015159', 'Trường Sơn', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5440', '4015301', 'Thị trấn Tĩnh Gia', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5441', '4015307', 'Triêu Dương', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5442', '4015315', 'Hùng Sơn', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5443', '4015329', 'Trúc Lâm', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5444', '4015333', 'Tân Trường', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5445', '4015335', 'Trường Lâm', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5446', '4015341', 'Hải An', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5447', '4015347', 'Ninh Hải', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5448', '4015351', 'Bình Minh', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5449', '4030109', 'Hưng Bình', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5450', '4030113', 'Quang Trung', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5451', '4030117', 'Hồng Sơn', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5452', '4030125', 'Hưng Dũng', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5453', '4030129', 'Hưng Đông', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5454', '4030131', 'Hưng Lộc', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5455', '4030133', 'Hưng Hòa', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5456', '4030307', 'Nghi Hoà', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5457', '4030311', 'Nghi Thu', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5458', '4030313', 'Nghi Hương', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5459', '4030503', 'Thông Thụ', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5460', '4030507', 'Hạnh Dịch', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5461', '4030521', 'Nậm Nhoóng', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5462', '4030523', 'Quang Phong', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5463', '4030525', 'Căm Muộn', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5464', '4030701', 'Thị trấn Quỳ Châu', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5465', '4030705', 'Châu Thuận', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5466', '4030715', 'Châu Nga', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5467', '4030719', 'Châu Bình', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5468', '4030721', 'Diên Lãm', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5469', '4030905', 'Bắc Lý', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5470', '4030911', 'Na Loi', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5471', '4030923', 'Hữu Lập', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5472', '4030927', 'Tà Cạ', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5473', '4030931', 'Tây Sơn', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5474', '4012115', 'Cao Ngọc', '', '259', '0');
INSERT INTO `dm_xa` VALUES ('5475', '4012331', 'Xuân Dương', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5476', '4012339', 'Tân Thành', '', '260', '0');
INSERT INTO `dm_xa` VALUES ('5477', '4012517', 'Tân Bình', '', '261', '0');
INSERT INTO `dm_xa` VALUES ('5478', '4012911', 'Vĩnh Long', '', '263', '0');
INSERT INTO `dm_xa` VALUES ('5479', '4013101', 'Thị trấn Hà Trung', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5480', '4013105', 'Hà Vinh', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5481', '4013149', 'Hà Hải', '', '264', '0');
INSERT INTO `dm_xa` VALUES ('5482', '4013311', 'Nga Tiến', '', '265', '0');
INSERT INTO `dm_xa` VALUES ('5483', '4013761', 'Quảng Phú', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5484', '4014105', 'Thiệu Phúc', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5485', '4014145', 'Thiệu Vận', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5486', '4014301', 'Thị trấn Hoằng Hoá', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5487', '4014327', 'Hoằng Cát', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5488', '4014361', 'Hoằng Thịnh', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5489', '4014519', 'Đông Tiến', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5490', '4014711', 'Hợp Tiến', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5491', '4014761', 'Thọ Cường', '', '272', '0');
INSERT INTO `dm_xa` VALUES ('5492', '4015353', 'Hải Thanh', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5493', '4030103', 'Hà Huy Tập', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5494', '4030105', 'Đội Cung', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5495', '4030505', 'Đồng Văn', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5496', '4030509', 'Tiền Phong', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5497', '4030703', 'Châu Bính', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5498', '4030713', 'Châu Hội', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5499', '4030913', 'Huồi Tụ', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5500', '4030939', 'Na Ngoi', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5501', '4031101', 'Thị trấn Quỳ Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5502', '4031107', 'Châu Tiến', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5503', '4031111', 'Châu Thành', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5504', '4031117', 'Tam Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5505', '4031119', 'Châu Cường', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5506', '4031123', 'Thọ Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5507', '4031125', 'Nghĩa Xuân', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5508', '4031131', 'Châu Lý', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5509', '4031133', 'Văn Lợi', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5510', '4031139', 'Hạ Sơn', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5511', '4031141', 'Đồng Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5512', '4031309', 'Đông Hiếu', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5513', '4031313', 'Nghĩa Hiếu', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5514', '4031321', 'Nghĩa Lâm', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5515', '4031323', 'Nghĩa Lạc', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5516', '4031329', 'Nghĩa Minh', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5517', '4031331', 'Nghĩa Lợi', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5518', '4031333', 'Nghĩa Thọ', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5519', '4031335', 'Nghĩa Thắng', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5520', '4031337', 'Nghĩa Quang', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5521', '4031339', 'Nghĩa Trung', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5522', '4031343', 'Nghĩa Liên', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5523', '4031349', 'Nghĩa Mỹ', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5524', '4031353', 'Nghĩa Long', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5525', '4031357', 'Nghĩa Đức', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5526', '4031501', 'Thị trấn Hòa Bình', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5527', '4031513', 'Xá Lượng', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5528', '4031521', 'Kim Tiến', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5529', '4031523', 'Hữu Khuông', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5530', '4031527', 'Luân Mai', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5531', '4031529', 'Mai Sơn', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5532', '4031531', 'Nhôn Mai', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5533', '4031535', 'Yên Hòa', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5534', '4031537', 'Yên Tĩnh', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5535', '4031709', 'Quỳnh Trang', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5536', '4031711', 'Quỳnh Thiện', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5537', '4031717', 'Quỳnh Phương', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5538', '4031721', 'Quỳnh Văn', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5539', '4031723', 'Quỳnh Xuân', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5540', '4031725', 'Quỳnh Tân', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5541', '4031731', 'Quỳnh Thạch', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5542', '4031737', 'Quỳnh Diện', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5543', '4031739', 'Quỳnh Hưng', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5544', '4031749', 'Quỳnh Hồng', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5545', '4031751', 'Quỳnh Đôi', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5546', '4031755', 'Quỳnh Giang', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5547', '4031757', 'Quỳnh Bá', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5548', '4031759', 'Quỳnh Yên', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5549', '4031761', 'Quỳnh Minh', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5550', '4031763', 'Tân Sơn', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5551', '4031765', 'Ngọc Sơn', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5552', '4031771', 'Quỳnh Nghĩa', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5553', '4031773', 'Quỳnh Thọ', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5554', '4031775', 'Tiến Thủy', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5555', '4031777', 'An Hòa', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5556', '4031781', 'Quỳnh Thuận', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5557', '4031783', 'Quỳnh Long', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5558', '4031901', 'Thị trấn Tân Kỳ', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5559', '4031907', 'Tân Xuân', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5560', '4031909', 'Nghĩa Bình', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5561', '4031911', 'Giai Xuân', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5562', '4031913', 'Nghĩa Thái', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5563', '4031917', 'Nghĩa Hợp', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5564', '4031919', 'Đồng Văn', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5565', '4031927', 'Tiên Kỳ', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5566', '4031929', 'Nghĩa Hành', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5567', '4031933', 'Kỳ Sơn', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5568', '4031935', 'Kỳ Tân', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5569', '4031939', 'Tân Long', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5570', '4031941', 'Tân An', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5571', '4032105', 'Lạng Khê', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5572', '4032107', 'Cam Lâm', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5573', '4032111', 'Mậu Đức', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5574', '4032113', 'Thạch Ngàn', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5575', '4032117', 'Chi Khê', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5576', '4032123', 'Lục Dạ', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5577', '4032125', 'Môn Sơn', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5578', '4032303', 'Tân Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5579', '4032305', 'Đức Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5580', '4032311', 'Lăng Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5581', '4032319', 'Hậu Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5582', '4032331', 'Hợp Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5583', '4032337', 'Bắc Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5584', '4032349', 'Công Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5585', '4032355', 'Long Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5586', '4032361', 'Khánh Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5587', '4032537', 'Diễn Bích', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5588', '4032551', 'Diễn Thành', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5589', '4032553', 'Diễn Minh', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5590', '4032559', 'Diễn Bình', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5591', '4032575', 'Diễn Trung', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5592', '4013779', 'Xuân Vinh', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5593', '4013781', 'Thọ Trường', '', '267', '0');
INSERT INTO `dm_xa` VALUES ('5594', '4013903', 'Đồng Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5595', '4013909', 'Châu Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5596', '4013931', 'Xuân Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5597', '4013945', 'Minh Lộc', '', '268', '0');
INSERT INTO `dm_xa` VALUES ('5598', '4014103', 'Thiệu Vũ', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5599', '4014157', 'Thiệu Khánh', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5600', '4014161', 'Thiệu Tân', '', '269', '0');
INSERT INTO `dm_xa` VALUES ('5601', '4014303', 'Hoằng Giang', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5602', '4014349', 'Hoằng Đạt', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5603', '4014375', 'Hoằng Châu', '', '270', '0');
INSERT INTO `dm_xa` VALUES ('5604', '4014511', 'Đông Yên', '', '271', '0');
INSERT INTO `dm_xa` VALUES ('5605', '4014911', 'Quảng Đức', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5606', '4014931', 'Quảng Hoà', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5607', '4014949', 'Quảng Vọng', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5608', '4015139', 'Vạn Thiện', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5609', '4015323', 'Xuân Lâm', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5610', '4015355', 'Hải Bình', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5611', '4030119', 'Trung Đô', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5612', '4030511', 'Nậm Giải', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5613', '4030515', 'Tri Lễ', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5614', '4030717', 'Châu Phong', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5615', '4030929', 'Mường Típ', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5616', '4031113', 'Liên Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5617', '4031115', 'Châu Lộc', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5618', '4031121', 'Châu Quang', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5619', '4031303', 'Nghĩa Hồng', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5620', '4031307', 'Nghĩa Bình', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5621', '4031315', 'Nghĩa Tân', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5622', '4031327', 'Nghĩa Thịnh', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5623', '4031505', 'Tam Đình', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5624', '4031515', 'Lưu Kiền', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5625', '4031743', 'Quỳnh Ngọc', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5626', '4031779', 'Sơn Hải', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5627', '4031903', 'Tân Phú', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5628', '4031923', 'Nghĩa Hoàn', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5629', '4032115', 'Châu Khê', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5630', '4032359', 'Viên Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5631', '4032701', 'Thị trấn Anh Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5632', '4032729', 'Lạng Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5633', '4032739', 'Lĩnh Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5634', '4032919', 'Thượng Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5635', '4032939', 'Tân Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5636', '4033139', 'Thanh An', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5637', '4033143', 'Ngọc Sơn', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5638', '4033171', 'Thanh Xuân', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5639', '4033305', 'Nghi Yên', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5640', '4033319', 'Nghi Phương', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5641', '4033325', 'Nghi Thiết', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5642', '4033333', 'Nghi Long', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5643', '4033509', 'Nam Thanh', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('5644', '4033511', 'Nam Anh', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('5645', '4033541', 'Nam Trung', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('5646', '4033701', 'Hưng Chung', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('5647', '4033711', 'Hưng Chính', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('5648', '4033735', 'Hưng Xuân', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('5649', '4050109', 'Thạch Linh', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('5650', '4050119', 'Thạch Yên', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('5651', '4050709', 'Trường Sơn', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5652', '4050737', 'Đức Lạc', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5653', '4050743', 'Đức Thanh', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5654', '4050755', 'Đức Đồng', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5655', '4050905', 'Sơn Hồng', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5656', '4050917', 'Sơn Kim', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5657', '4050919', 'Sơn Tây', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5658', '4050937', 'Sơn Phố', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5659', '4050957', 'Sơn Long', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5660', '4051131', 'Khánh Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5661', '4051133', 'Đại Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5662', '4051147', 'Phù Lưu', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5663', '4051149', 'Xuân Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5664', '4051153', 'Thượng Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5665', '4051307', 'Thạch Kênh', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5666', '4051309', 'Việt Xuyên', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5667', '4051345', 'Hộ Độ', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5668', '4051357', 'Thạch Ngọc', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5669', '4051367', 'Thạch Thắng', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5670', '4051373', 'Thạch Xuân', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5671', '4051525', 'Cẩm Nhượng', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('5672', '4051703', 'Thị trấn NT 20-4', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5673', '4051725', 'Hương Bình', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5674', '4051731', 'Hương Giang', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5675', '4051737', 'Hương Vĩnh', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5676', '4051743', 'Lộc Yên', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5677', '4051913', 'Kỳ Phong', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5678', '4051929', 'Kỳ Hà', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5679', '4051939', 'Kỳ Hoa', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5680', '4051951', 'Kỳ Ninh', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5681', '4051953', 'Kỳ Đồng', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5682', '4051961', 'Kỳ Thượng', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5683', '4070107', 'Hải Thành', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('5684', '4070125', 'Bảo Ninh', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('5685', '4070319', 'Phong Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('5686', '4070329', 'Cao Quảng', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('5687', '4070701', 'Thị trấn Ba Đồn', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5688', '4070741', 'Quảng Thạch', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5689', '4070759', 'Quảng Hòa', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5690', '4070935', 'Nam Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('5691', '4070947', 'Phú Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('5692', '4071115', 'Xuân Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('5693', '4071311', 'Sơn Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5694', '4071315', 'Trường Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5695', '4071323', 'An Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5696', '4071327', 'Phong Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5697', '4071339', 'Hồng Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5698', '4071353', 'Ngư Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5699', '4090105', '3', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('5700', '4090509', 'Vĩnh Trung', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('5701', '4090511', 'Vĩnh Chấp', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('5702', '4090519', 'Vĩnh Kim', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('5703', '4090701', 'Thị trấn Gio Linh', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5704', '4090703', 'Gio Châu', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5705', '4090711', 'Gio Mỹ', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5706', '4090721', 'Gio Hải', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5707', '4090725', 'Gio Hòa', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5708', '4090903', 'Cam Thành', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('5709', '4091131', 'Triệu Trung', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('5710', '4091303', 'Hải Lâm', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('5711', '4014941', 'Quảng Ngọc', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5712', '4014961', 'Quảng Thọ', '', '273', '0');
INSERT INTO `dm_xa` VALUES ('5713', '4015123', 'Tế Tân', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5714', '4015161', 'Trường Giang', '', '274', '0');
INSERT INTO `dm_xa` VALUES ('5715', '4015303', 'Thanh Sơn', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5716', '4015337', 'Hải Châu', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5717', '4015357', 'Tĩnh Hải', '', '275', '0');
INSERT INTO `dm_xa` VALUES ('5718', '4030115', 'Trường Thi', '', '276', '0');
INSERT INTO `dm_xa` VALUES ('5719', '4030901', 'Thị trấn Mường Xén', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5720', '4030915', 'Mường Lống', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5721', '4030933', 'Hữu Kiệm', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5722', '4031137', 'Bắc Sơn', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5723', '4031509', 'Tam Hợp', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5724', '4031525', 'Hữu Dương', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5725', '4031733', 'Quỳnh Mỹ', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5726', '4031747', 'Quỳnh Lâm', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5727', '4031921', 'Nghĩa Phúc', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5728', '4031937', 'Phú Sơn', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5729', '4032103', 'Bình Chuẩn', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5730', '4032315', 'Quang Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5731', '4032329', 'Hoa Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5732', '4032509', 'Diễn Hùng', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5733', '4032529', 'Diễn Kim', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5734', '4032543', 'Diễn Hoa', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5735', '4032565', 'Diễn Thịnh', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5736', '4032733', 'Phúc Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5737', '4032951', 'Minh Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5738', '4032961', 'Trù Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5739', '4033101', 'Thị trấn Thanh Chương', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5740', '4033125', 'Thanh Tường', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5741', '4033131', 'Thanh Đồng', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5742', '4033161', 'Thanh Khai', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5743', '4050113', 'Thạch Phú', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('5744', '4050307', 'Đức Thuận', '', '296', '0');
INSERT INTO `dm_xa` VALUES ('5745', '4050509', 'Xuân Đan', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('5746', '4050529', 'Xuân Lam', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('5747', '4050741', 'Đức Lâm', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5748', '4050747', 'Đức Lập', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5749', '4050763', 'Tân Hương', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5750', '4050931', 'Sơn Diệm', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5751', '4050939', 'Sơn Phúc', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5752', '4050941', 'Sơn Bằng', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('5753', '4051125', 'Bình Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5754', '4051315', 'Thạch Mỹ', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5755', '4051319', 'Thạch Kim', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5756', '4051383', 'Nam Hương', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('5757', '4051713', 'Hương Thọ', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5758', '4051749', 'Hương Đô', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5759', '4070513', 'Hóa Sơn', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('5760', '4070713', 'Quảng Tùng', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5761', '4070737', 'Quảng Lưu', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5762', '4070747', 'Cảnh Hóa', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5763', '4070929', 'Hoàn Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('5764', '4070931', 'Tây Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('5765', '4070949', 'Đức Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('5766', '4071109', 'Hàm Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('5767', '4071301', 'Thị trấn Kiến Giang', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5768', '4090109', '5', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('5769', '4090537', 'Vĩnh Tân', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('5770', '4090719', 'Gio Thành', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5771', '4090739', 'Linh Thượng', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5772', '4090901', 'Thị trấn Cam Lộ', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('5773', '4090917', 'Cam Nghĩa', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('5774', '4091129', 'Triệu Đông', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('5775', '4091339', 'Hải Sơn', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('5776', '4091513', 'Tân Hợp', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('5777', '4091701', 'Mò ó', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('5778', '4091703', 'Hướng Hiệp', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('5779', '4110113', 'Thuận Hòa', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('5780', '4110119', 'Phú Cát', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('5781', '4110321', 'Phong Mỹ', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('5782', '4110331', 'Phong Sơn', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('5783', '4110501', 'Thị trấn Sịa', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('5784', '4110709', 'Hương Văn', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('5785', '4110729', 'Bình Thành', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('5786', '4110905', 'Phú Thanh', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5787', '4110907', 'Phú Mậu', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5788', '4110919', 'Phú Xuân', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5789', '4110929', 'Phú Đa', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5790', '4110935', 'Vinh Thái', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5791', '4111313', 'Vinh Hải', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('5792', '4111527', 'Hồng Thái', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('5793', '4111539', 'A Roằng', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('5794', '4111703', 'Hương Phú', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('5795', '4111709', 'Hương Hữu', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('5796', '5010107', 'Thanh Bình', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('5797', '5010301', 'An Khê', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('5798', '5010503', 'An Hải Bắc', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('5799', '5010509', 'Phước Mỹ', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('5800', '5030517', 'Tà Lu', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('5801', '5030533', 'Ma Cooih', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('5802', '5030705', 'Đại Lãnh', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('5803', '5030707', 'Đại Hồng', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('5804', '5030903', 'Điện Tiến', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('5805', '5030911', 'Điện Hồng', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('5806', '5031531', 'Bình Sa', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('5807', '5031709', 'Quế Trung', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('5808', '5031715', 'Quế Long', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('5809', '5032107', 'Tiên Cẩm', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('5810', '5032309', 'Phước Mỹ', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('5811', '5032715', 'Trà Đốc', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('5812', '5050301', 'Lý Vĩnh', '', '353', '0');
INSERT INTO `dm_xa` VALUES ('5813', '5050541', 'Bình Hiệp', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('5814', '5050727', 'Trà Phong', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('5815', '5051521', 'Nghĩa Hà', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('5816', '5051533', 'Nghĩa Mỹ', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('5817', '5051721', 'Hành Nhân', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('5818', '5051903', 'Long Sơn', '', '361', '0');
INSERT INTO `dm_xa` VALUES ('5819', '5051905', 'Long Mai', '', '361', '0');
INSERT INTO `dm_xa` VALUES ('5820', '5052119', 'Đức Hòa', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('5821', '5070113', 'Nguyến Văn Cừ', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('5822', '5070125', 'Nhơn Bình', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('5823', '5070713', 'Ân Thạnh', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('5824', '5070907', 'Mỹ Thắng', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('5825', '5070925', 'Mỹ Chánh', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('5826', '5071323', 'Cát Nhơn', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('5827', '5071325', 'Cát Hưng', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('5828', '5071501', 'Thị trấn Phú Phong', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('5829', '5071511', 'Bình Thành', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('5830', '4030309', 'Nghi Hải', '', '277', '0');
INSERT INTO `dm_xa` VALUES ('5831', '4030501', 'Thị trấn Kim Sơn', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5832', '4030519', 'Mường Nọc', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5833', '4030707', 'Châu Tiến', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5834', '4030723', 'Châu Hoàn', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5835', '4030907', 'Mỹ Lý', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5836', '4031745', 'Quỳnh Bảng', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5837', '4031753', 'Quỳnh Lương', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5838', '4031931', 'Hương Sơn', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5839', '4032101', 'Thị trấn Con Cuông', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5840', '4032109', 'Đôn Phục', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5841', '4032301', 'Thị trấn Yên Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5842', '4032307', 'Mã Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5843', '4032323', 'Phú Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5844', '4032533', 'Diễn Xuân', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5845', '4032535', 'Diễn Kỷ', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5846', '4032545', 'Diễn Ngọc', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5847', '4032555', 'Diễn Phúc', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5848', '4032561', 'Diễn Cát', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5849', '4032711', 'Đỉnh Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5850', '4032917', 'Tràng Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5851', '4032927', 'Nam Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5852', '4032943', 'Quang Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5853', '4033127', 'Thanh Hương', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5854', '4033151', 'Thanh Long', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5855', '4033159', 'Thanh Lương', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5856', '4033173', 'Thanh Lâm', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5857', '4033337', 'Nghi Công', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5858', '4033347', 'Nghi Vạn', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5859', '4033519', 'Nam Lĩnh', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('5860', '4033531', 'Hùng Tiến', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('5861', '4033547', 'Nam Kim', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('5862', '4033707', 'Hưng Đạo', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('5863', '4033731', 'Hưng Phú', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('5864', '4050537', 'Cương Gián', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('5865', '4050727', 'Trung Lễ', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5866', '4050761', 'Đức Lạng', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('5867', '4051137', 'Thuần Thiện', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('5868', '4051509', 'Cẩm Hòa', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('5869', '4051515', 'Cẩm Thành', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('5870', '4051531', 'Cẩm Phúc', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('5871', '4051533', 'Cẩm Lĩnh', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('5872', '4051723', 'Hòa Hải', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('5873', '4051931', 'Kỳ Hưng', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5874', '4051941', 'Kỳ Thư', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5875', '4051947', 'Kỳ Lợi', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('5876', '4070103', 'Bắc Lý', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('5877', '4070313', 'Đồng Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('5878', '4070323', 'Ngư Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('5879', '4070527', 'Tân Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('5880', '4070711', 'Quảng Châu', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5881', '4070721', 'Quảng Thọ', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5882', '4070739', 'Quảng Tiến', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5883', '4070755', 'Quảng Sơn', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('5884', '4071307', 'Ngân Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5885', '4071317', 'Mai Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5886', '4071321', 'Lộc Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5887', '4071337', 'Thái Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5888', '4071351', 'Hải Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('5889', '4090111', 'Đông Thanh', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('5890', '4090535', 'Vĩnh Sơn', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('5891', '4090737', 'Gio Quang', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('5892', '4091123', 'Triệu Giang', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('5893', '4091127', 'Triệu Tài', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('5894', '4091137', 'Triệu An', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('5895', '4091337', 'Hải Thượng', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('5896', '4110121', 'Kim Long', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('5897', '4110125', 'Đúc', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('5898', '4110311', 'Điền Lộc', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('5899', '4110319', 'Điền Hải', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('5900', '4110327', 'Phong An', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('5901', '4110701', 'Thị trấn Tứ Hạ', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('5902', '4110707', 'Hương Vân', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('5903', '4110903', 'Thuận An', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5904', '4110911', 'Phú Thuận', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('5905', '4111117', 'Thủy Tân', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('5906', '5010505', 'Nại Hiên Đông', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('5907', '5010901', 'Hoà Hiệp', '', '335', '0');
INSERT INTO `dm_xa` VALUES ('5908', '5011127', 'Hoà Phú', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('5909', '5030131', 'Tam Dân', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('5910', '5030307', 'Cẩm Hà', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('5911', '5030315', 'Cẩm Nam', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('5912', '5030527', 'Dang', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('5913', '5030711', 'Đại Quang', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('5914', '5030921', 'Điện Dương', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('5915', '5031311', 'Tà Bhing', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('5916', '5032127', 'Tiên Lộc', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('5917', '5032311', 'Phước Chánh', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('5918', '5032503', 'Tam Xuân I', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('5919', '5032723', 'Trà Giác', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('5920', '5032737', 'Trà Don', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('5921', '5050113', 'Quảng Phú', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('5922', '5050529', 'Bình Hòa', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('5923', '5050711', 'Trà Thọ', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('5924', '5050713', 'Trà Tân', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('5925', '5050725', 'Trà Quân', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('5926', '5050729', 'Trà Lãnh', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('5927', '5050925', 'Tịnh Đông', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('5928', '5051105', 'Sơn Tân', '', '357', '0');
INSERT INTO `dm_xa` VALUES ('5929', '5051501', 'Thị trấn La Hà', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('5930', '5051509', 'Nghĩa Sơn', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('5931', '5051517', 'Nghĩa Kỳ', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('5932', '5052525', 'Ba Ngạc', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('5933', '5070501', 'Thị trấn Bồng Sơn', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('5934', '5070505', 'Hoài Sơn', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('5935', '5070513', 'Tam Quan Bắc', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('5936', '5070705', 'Ân Mỹ', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('5937', '5070901', 'Thị trấn Phù Mỹ', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('5938', '5070903', 'Mỹ Đức', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('5939', '5071105', 'Vĩnh Hòa', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('5940', '5071729', 'Nhơn Tân', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('5941', '5090309', 'Xuân Long', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('5942', '5090517', 'Xuân Thọ 1', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('5943', '5090727', 'An Hòa', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('5944', '5090917', 'Sơn Định', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('5945', '5091117', 'Hòa Tân Tây', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('5946', '5091123', 'Hòa Tân Đông', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('5947', '5091127', 'Hòa Hiệp Bắc', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('5948', '5091131', 'Hòa Hiệp Nam', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('5949', '4030513', 'Châu Kim', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('5950', '4030711', 'Châu Hạnh', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('5951', '4030909', 'Đoọc Mạy', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5952', '4030917', 'Nậm Cắn', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5953', '4030935', 'Chiêu Lưu', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('5954', '4031103', 'Minh Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5955', '4031129', 'Châu Đình', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('5956', '4031301', 'Thị trấn Thái Hòa', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5957', '4031311', 'Tây Hiếu', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5958', '4031341', 'Nghĩa Hội', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5959', '4031351', 'Nghĩa An', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5960', '4031359', 'Nghĩa Khánh', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5961', '4031363', 'Nghĩa Phú', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('5962', '4031503', 'Tam Quang', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5963', '4031533', 'Yên Na', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('5964', '4031701', 'Thị trấn Cầu Giát', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5965', '4031705', 'Quỳnh Vinh', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5966', '4031719', 'Quỳnh Châu', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5967', '4031767', 'Mai Hùng', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('5968', '4031905', 'Tân Hợp', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5969', '4031925', 'Nghĩa Dũng', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('5970', '4032121', 'Yên Khê', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('5971', '4032321', 'Phúc Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5972', '4032339', 'Xuân Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5973', '4032347', 'Trung Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5974', '4032367', 'Sơn Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('5975', '4032513', 'Diễn Hoàng', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5976', '4032523', 'Diễn Hải', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5977', '4032541', 'Diễn Hạnh', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5978', '4032563', 'Diễn Thắng', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('5979', '4032717', 'Hùng Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5980', '4032719', 'Đức Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5981', '4032723', 'Thạch Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5982', '4032735', 'Long Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('5983', '4032903', 'Giang Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5984', '4032913', 'Ngọc Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5985', '4032929', 'Lưu Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5986', '4032931', 'Yên Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5987', '4032945', 'Thịnh Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5988', '4032957', 'Hiến Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('5989', '4033103', 'Cát Văn', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5990', '4033107', 'Thanh Nho', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5991', '4033111', 'Phong Thịnh', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5992', '4033117', 'Thanh Tiên', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5993', '4033147', 'Xuân Tường', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5994', '4033149', 'Võ Liệt', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5995', '4033169', 'Thanh Mai', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('5996', '4033307', 'Nghi Kiều', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5997', '4033317', 'Nghi Mỹ', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5998', '4033339', 'Nghi Diên', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('5999', '4033351', 'Nghi ân', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6000', '4033361', 'Nghi Đức', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6001', '4033503', 'Nam Hưng', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6002', '4033727', 'Hưng Tiến', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6003', '4033737', 'Hưng Châu', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6004', '4033743', 'Hưng Khánh', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6005', '4050503', 'Thị trấn Xuân An', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6006', '4050511', 'Xuân Phổ', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6007', '4050701', 'Thị trấn Đức Thọ', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6008', '4050707', 'Đức Châu', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6009', '4050715', 'Đức Vĩnh', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6010', '4050759', 'Đức Hương', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6011', '4050911', 'Sơn Lễ', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6012', '4050915', 'Sơn An', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6013', '4050927', 'Sơn Hòa', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6014', '4050947', 'Sơn Châu', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6015', '4051115', 'Thanh Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6016', '4051135', 'Tùng Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6017', '4051313', 'Thạch Bằng', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6018', '4051325', 'Thạch Long', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6019', '4051341', 'Mai Phụ', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6020', '4051501', 'Thị trấn Cẩm Xuyên', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6021', '4051503', 'Cẩm Vĩnh', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6022', '4051519', 'Cẩm Huy', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6023', '4051521', 'Cẩm Thăng', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6024', '4051523', 'Cẩm Long', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6025', '4051549', 'Cẩm Sơn', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6026', '4051707', 'Hương Điền', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6027', '4051721', 'Phúc Đồng', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6028', '4051735', 'Phú Gia', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6029', '4051747', 'Hương Liên', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6030', '4051907', 'Kỳ Xuân', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6031', '4070117', 'Nghĩa Ninh', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6032', '4070311', 'Thuận Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6033', '4070321', 'Mai Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6034', '4070331', 'Văn Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6035', '4070503', 'Hóa Thanh', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6036', '4070507', 'Hồng Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6037', '4070729', 'Quảng Phong', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6038', '4070731', 'Quảng Thanh', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6039', '4070749', 'Quảng Tiên', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6040', '4070765', 'Quảng Hải', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6041', '4070767', 'Quảng Văn', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6042', '4070905', 'Thượng Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6043', '4070907', 'Tân Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6044', '4070923', 'Phú Định', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6045', '4071107', 'Duy Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6046', '4071121', 'Lương Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6047', '4071333', 'Dương Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6048', '4090503', 'Thị trấn Bến Quan', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6049', '4090521', 'Vĩnh Hòa', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6050', '4090529', 'Vĩnh Thủy', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6051', '4090539', 'Vĩnh Quang', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6052', '4090541', 'Vĩnh Giang', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6053', '4090707', 'Trung Giang', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6054', '4090717', 'Gio Bình', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6055', '4090905', 'Cam An', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('6056', '4090907', 'Cam Thanh', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('6057', '4090915', 'Cam Chính', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('6058', '4091105', 'Triệu Thượng', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6059', '4091121', 'Triệu Sơn', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6060', '4091325', 'Hải Thành', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6061', '4091331', 'Hải Hòa', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6062', '4091335', 'Hải Tân', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6063', '4091511', 'Hướng Linh', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6064', '4091537', 'A Xing', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6065', '4091709', 'Ba Lòng', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6066', '4091719', 'A Vao', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6067', '4110111', 'Phú Hậu', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6068', '4030517', 'Châu Thôn', '', '278', '0');
INSERT INTO `dm_xa` VALUES ('6069', '4030709', 'Châu Thắng', '', '279', '0');
INSERT INTO `dm_xa` VALUES ('6070', '4030921', 'Phà Đánh', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('6071', '4030925', 'Bảo Thắng', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('6072', '4031109', 'Yên Hợp', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('6073', '4031319', 'Nghĩa Yên', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6074', '4031345', 'Nghĩa Tiến', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6075', '4031347', 'Nghĩa Hòa', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6076', '4031355', 'Nghĩa Thuận', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6077', '4031361', 'Nghĩa Lộc', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6078', '4031507', 'Tam Thái', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('6079', '4031517', 'Lưỡng Minh', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('6080', '4031703', 'Quỳnh Thắng', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6081', '4031707', 'Quỳnh Lộc', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6082', '4031713', 'Quỳnh Dị', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6083', '4031715', 'Quỳnh Lập', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6084', '4032309', 'Đô Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6085', '4032313', 'Thọ Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6086', '4032333', 'Văn Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6087', '4032351', 'Nam Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6088', '4032353', 'Vĩnh Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6089', '4032511', 'Diễn Yên', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6090', '4032517', 'Diễn Phong', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6091', '4032577', 'Diễn Lộc', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6092', '4032911', 'Bài Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6093', '4033163', 'Thanh Yên', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6094', '4033165', 'Thanh Tùng', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6095', '4033335', 'Nghi Thịnh', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6096', '4033341', 'Nghi Trung', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6097', '4033501', 'Thị trấn Nam Đàn', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6098', '4033715', 'Hưng Tân', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6099', '4050115', 'Thạch Quí', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6100', '4050513', 'Xuân Hải', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6101', '4050751', 'Đức An', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6102', '4050921', 'Sơn Quang', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6103', '4050935', 'Sơn Trung', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6104', '4050943', 'Sơn Mai', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6105', '4050949', 'Sơn Bình', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6106', '4051127', 'Thường Nga', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6107', '4051141', 'Phú Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6108', '4051143', 'Yên Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6109', '4051145', 'Trung Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6110', '4051333', 'Thạch Thanh', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6111', '4051335', 'Thạch Thượng', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6112', '4051353', 'Tượng Sơn', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6113', '4051359', 'Thạch Vĩnh', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6114', '4051369', 'Thạch Hội', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6115', '4051377', 'Thạch Bình', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6116', '4051507', 'Cẩm Yên', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6117', '4051539', 'Cẩm Mỹ', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6118', '4051729', 'Hương Thủy', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6119', '4051739', 'Hương Xuân', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6120', '4051751', 'Phúc Trạch', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6121', '4070101', 'Đồng Sơn', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6122', '4070301', 'Lâm Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6123', '4070707', 'Quảng Kim', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6124', '4070751', 'Quảng Trung', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6125', '4071123', 'Võ Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6126', '4071349', 'Ngư Hòa', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6127', '4090103', '2', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('6128', '4090713', 'Gio Phong', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6129', '4091101', 'Thị trấn ái Tử', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6130', '4091103', 'Triệu ái', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6131', '4091327', 'Hải Phú', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6132', '4091329', 'Hải Thọ', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6133', '4091517', 'Tân Thành', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6134', '4091721', 'Tà Rụt', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6135', '4110101', 'Phú Thuận', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6136', '4110123', 'Vĩ Dạ', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6137', '4110303', 'Điền Hương', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6138', '4110307', 'Phong Bình', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6139', '4110313', 'Phong Hòa', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6140', '4110505', 'Quảng Lợi', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6141', '4110507', 'Quảng Ngạn', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6142', '4110517', 'Quảng Thọ', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6143', '4110519', 'Quảng An', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6144', '4110909', 'Phú Dương', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6145', '4110921', 'Phú Hồ', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6146', '4110925', 'Phú Diên', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6147', '4110927', 'Phú Lương', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6148', '4110931', 'Vinh Xuân', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6149', '4111115', 'Thủy Lương', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6150', '4111119', 'Thủy Phù', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6151', '4111311', 'Vinh Mỹ', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6152', '4111319', 'Xuân Lộc', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6153', '4111335', 'Lộc Hải', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6154', '4111507', 'Hồng Trung', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6155', '4111515', 'Hồng Quảng', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6156', '4111537', 'A Đớt', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6157', '4111701', 'Thị trấn Khe Tre', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6158', '4111705', 'Hương Sơn', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6159', '5010105', 'Thạch Thang', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6160', '5010111', 'Bình Thuận', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6161', '5010115', 'Nam Dương', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6162', '5010305', 'Xuân Hà', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('6163', '5030701', 'Thị trấn ái Nghĩa', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('6164', '5030709', 'Đại Đồng', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('6165', '5030713', 'Đại Nghĩa', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('6166', '5031103', 'Duy Thu', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('6167', '5031109', 'Duy Hòa', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('6168', '5031503', 'Bình Dương', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6169', '5031519', 'Bình Trị', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6170', '5031535', 'Bình Quế', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6171', '5031725', 'Quế Minh', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6172', '5032113', 'Tiên Ngọc', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6173', '5032115', 'Tiên Hiệp', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6174', '5032129', 'Tiên Lập', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6175', '5032513', 'Tam Anh', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6176', '5050103', 'Trần Phú', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('6177', '5050505', 'Bình Đông', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6178', '5050545', 'Bình Tân', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6179', '5050703', 'Trà Giang', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6180', '5050911', 'Tịnh Hòa', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6181', '5050917', 'Tịnh Thiện', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6182', '5051325', 'Sơn Kỳ', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6183', '5051505', 'Nghĩa Trung', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('6184', '5051907', 'Thanh An', '', '361', '0');
INSERT INTO `dm_xa` VALUES ('6185', '5052125', 'Đức Lân', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('6186', '5052321', 'Phổ Cường', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('6187', '4030903', 'Keng Đu', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('6188', '4030919', 'Bảo Nam', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('6189', '4031127', 'Châu Thái', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('6190', '4031305', 'Nghĩa Sơn', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6191', '4031317', 'Nghĩa Mai', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6192', '4031325', 'Nghĩa Hưng', '', '282', '0');
INSERT INTO `dm_xa` VALUES ('6193', '4031519', 'Kim Đa', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('6194', '4031541', 'Nga My', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('6195', '4031727', 'Quỳnh Tam', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6196', '4032119', 'Bồng Khê', '', '286', '0');
INSERT INTO `dm_xa` VALUES ('6197', '4032501', 'Thị trấn Diễn Châu', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6198', '4032519', 'Diễn Tháp', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6199', '4032539', 'Diễn Đồng', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6200', '4032715', 'Tường Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6201', '4032725', 'Vĩnh Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6202', '4032727', 'Khai Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6203', '4032731', 'Tào Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6204', '4032933', 'Văn Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6205', '4033121', 'Thanh Phong', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6206', '4033343', 'Nghi Trường', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6207', '4033535', 'Xuân Lâm', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6208', '4033713', 'Hưng Thông', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6209', '4050107', 'Tân Giang', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6210', '4050519', 'Xuân Giang', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6211', '4050723', 'Bùi Xá', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6212', '4050767', 'Đức Liên', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6213', '4050913', 'Sơn Tiến', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6214', '4050961', 'Sơn Thủy', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6215', '4051323', 'Phù Việt', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6216', '4051385', 'Thạch Lâm', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6217', '4051933', 'Kỳ Hải', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6218', '4051955', 'Kỳ Long', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6219', '4051963', 'Kỳ Nam', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6220', '4070113', 'Hải Đình', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6221', '4070115', 'Phú Hải', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6222', '4070307', 'Kim Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6223', '4070309', 'Lê Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6224', '4070317', 'Đức Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6225', '4070509', 'Hóa Tiến', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6226', '4070525', 'Thượng Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6227', '4070717', 'Quảng Hưng', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6228', '4070909', 'Phúc Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6229', '4070913', 'Xuân Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6230', '4070943', 'Thanh Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6231', '4070957', 'Nhân Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6232', '4070959', 'Lý Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6233', '4071101', 'Vĩnh Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6234', '4071125', 'Gia Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6235', '4071329', 'Liên Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6236', '4090507', 'Vĩnh Tú', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6237', '4091133', 'Triệu Long', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6238', '4091305', 'Hải An', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6239', '4091315', 'Hải Xuân', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6240', '4091501', 'Thị trấn Khe Sanh', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6241', '4091705', 'Đa Krông', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6242', '4091713', 'Ba Nang', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6243', '4091723', 'A Bung', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6244', '4110127', 'Vĩnh Ninh', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6245', '4110147', 'Thủy Xuân', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6246', '4110317', 'Phong Hải', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6247', '4110323', 'Phong Thu', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6248', '4110915', 'Phú Mỹ', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6249', '4111301', 'Thị trấn Phú Lộc', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6250', '4111535', 'Đông Sơn', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6251', '5010121', 'Hoà Cường', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6252', '5010309', 'Vĩnh Trung', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('6253', '5010313', 'Thạc Gián', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('6254', '5010501', 'An Hải Tây', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('6255', '5010511', 'Thọ Quang', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('6256', '5010513', 'An Hải Đông', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('6257', '5011113', 'Hoà Châu', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('6258', '5030113', 'Hòa Hương', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6259', '5030133', 'Tam Thái', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6260', '5030139', 'Tam Lãnh', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6261', '5030505', 'A Xan', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('6262', '5030523', 'Tư', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('6263', '5030917', 'Điện An', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('6264', '5030925', 'Điện Trung', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('6265', '5031101', 'Thị trấn Nam Phước', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('6266', '5031111', 'Duy Châu', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('6267', '5031301', 'Thị trấn Thạnh Mỹ', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('6268', '5031523', 'Bình Quý', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6269', '5031713', 'Quế Phong', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6270', '5031723', 'Quế An', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6271', '5031913', 'Phước Gia', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('6272', '5032109', 'Tiên Châu', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6273', '5032119', 'Tiên Mỹ', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6274', '5032123', 'Tiên Thọ', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6275', '5032315', 'Phước Kim', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('6276', '5032711', 'Trà Giang', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6277', '5032727', 'Trà Tập', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6278', '5032731', 'Trà Cang', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6279', '5050511', 'Bình Nguyên', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6280', '5050521', 'Bình Thuận', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6281', '5050535', 'Bình Phú', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6282', '5050717', 'Trà Nham', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6283', '5050929', 'Tịnh Châu', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6284', '5051303', 'Sơn Trung', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6285', '5051305', 'Sơn Thượng', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6286', '5051529', 'Nghĩa Hiệp', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('6287', '5051711', 'Hành Phước', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('6288', '5051901', 'Long Hiệp', '', '361', '0');
INSERT INTO `dm_xa` VALUES ('6289', '5051909', 'Long Môn', '', '361', '0');
INSERT INTO `dm_xa` VALUES ('6290', '5052323', 'Phổ Khánh', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('6291', '5070105', 'Đống Đa', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6292', '5070129', 'Nhơn Lý', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6293', '5070135', 'Nhơn Châu', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6294', '5070315', 'An Quang', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('6295', '5070517', 'Hoài Hảo', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('6296', '5070725', 'Ân Nghĩa', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('6297', '5070917', 'Mỹ Trinh', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('6298', '5071327', 'Cát Tường', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('6299', '5071519', 'Tây Vinh', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('6300', '5071527', 'Tây Phú', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('6301', '5071717', 'Nhơn Hưng', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('6302', '5071919', 'Phước Thuận', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('6303', '5090503', 'Xuân Lộc', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('6304', '5090723', 'An Hải', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('6305', '5090731', 'An Chấn', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('6306', '4030937', 'Mường ải', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('6307', '4030941', 'Nậm Càn', '', '280', '0');
INSERT INTO `dm_xa` VALUES ('6308', '4031105', 'Châu Hồng', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('6309', '4031135', 'Nam Sơn', '', '281', '0');
INSERT INTO `dm_xa` VALUES ('6310', '4031511', 'Thạch Giám', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('6311', '4031539', 'Yên Thắng', '', '283', '0');
INSERT INTO `dm_xa` VALUES ('6312', '4031729', 'Quỳnh Hoa', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6313', '4031735', 'Quỳnh Hậu', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6314', '4031741', 'Quỳnh Thanh', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6315', '4031769', 'Quỳnh Liên', '', '284', '0');
INSERT INTO `dm_xa` VALUES ('6316', '4031915', 'Nghĩa Đồng', '', '285', '0');
INSERT INTO `dm_xa` VALUES ('6317', '4032341', 'Nhân Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6318', '4032365', 'Mỹ Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6319', '4032505', 'Diễn Đoài', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6320', '4032507', 'Diễn Trường', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6321', '4032531', 'Diễn Thái', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6322', '4032573', 'Diễn An', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6323', '4032721', 'Hội Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6324', '4032737', 'Cao Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6325', '4032925', 'Đông Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6326', '4033129', 'Thanh Lĩnh', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6327', '4033133', 'Thanh Thịnh', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6328', '4033157', 'Thanh Hà', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6329', '4033167', 'Thanh Giang', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6330', '4033303', 'Nghi Văn', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6331', '4033311', 'Nghi Đồng', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6332', '4033313', 'Nghi Hưng', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6333', '4033355', 'Nghi Xuân', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6334', '4033525', 'Nam Tân', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6335', '4033703', 'Hưng Yên', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6336', '4050101', 'Bắc Hà', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6337', '4050305', 'Trung Lương', '', '296', '0');
INSERT INTO `dm_xa` VALUES ('6338', '4050311', 'Đậu Liêu', '', '296', '0');
INSERT INTO `dm_xa` VALUES ('6339', '4050705', 'Đức Quang', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6340', '4050717', 'Tùng ảnh', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6341', '4050745', 'Ân Phú', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6342', '4050903', 'Thị trấn Phố Châu', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6343', '4050933', 'Sơn Hàm', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6344', '4051103', 'Hồng Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6345', '4051321', 'Thạch Bàn', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6346', '4051375', 'Thạch Tân', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6347', '4051381', 'Thạch Điền', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6348', '4051511', 'Cẩm Nam', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6349', '4051535', 'Cẩm Quan', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6350', '4051537', 'Cẩm Hà', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6351', '4051753', 'Hương Trạch', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6352', '4051943', 'Kỳ Thọ', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6353', '4051945', 'Kỳ Phương', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6354', '4070109', 'Đồng Phú', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6355', '4070121', 'Quang Phú', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6356', '4070325', 'Tiến Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6357', '4070727', 'Quảng Long', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6358', '4070733', 'Quảng Trường', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6359', '4070915', 'Sơn Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6360', '4070917', 'Hưng Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6361', '4070919', 'Liên Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6362', '4070945', 'Hải Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6363', '4070951', 'Đồng Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6364', '4090101', '1', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('6365', '4090107', '4', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('6366', '4090527', 'Vĩnh Hiền', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6367', '4090543', 'Vĩnh Ô', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6368', '4090733', 'Hải Thái', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6369', '4091107', 'Triệu Phước', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6370', '4091523', 'Tân Liên', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6371', '4091707', 'Triệu Nguyên', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6372', '4091725', 'A Ngo', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6373', '4110521', 'Quảng Thành', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6374', '4111111', 'Thủy Phương', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6375', '4111113', 'Thủy Châu', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6376', '4111315', 'Vinh Giang', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6377', '4111333', 'Lộc Tiến', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6378', '4111505', 'Hồng Vân', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6379', '4111519', 'A Ngo', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6380', '4111541', 'Hương Nguyên', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6381', '5010113', 'Hoà Thuận', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6382', '5010123', 'Khuê Trung', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6383', '5010315', 'Chính Gián', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('6384', '5030105', 'Trường Xuân', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6385', '5030529', 'A Rooih', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('6386', '5030727', 'Đại Thắng', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('6387', '5031125', 'Duy Nghĩa', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('6388', '5031507', 'Bình Nguyên', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6389', '5031717', 'Quế Hiệp', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6390', '5031731', 'Phú Thọ', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6391', '5032105', 'Tiên Hà', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6392', '5032125', 'Tiên An', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6393', '5032517', 'Tam Hiệp', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6394', '5050101', 'Lê Hồng Phong', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('6395', '5050105', 'Trần Hưng Đạo', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('6396', '5050107', 'Nguyễn Nghiêm', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('6397', '5050115', 'Nghĩa Dõng', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('6398', '5050515', 'Bình An', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6399', '5050715', 'Trà Khê', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6400', '5050723', 'Trà Thanh', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6401', '5050737', 'Trà Xinh', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6402', '5050909', 'Tịnh Trà', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6403', '5051311', 'Sơn Hạ', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6404', '5051315', 'Sơn Giang', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6405', '5051323', 'Sơn Thủy', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6406', '5052113', 'Đức Minh', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('6407', '5052117', 'Đức Tân', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('6408', '5052309', 'Phổ Phong', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('6409', '5052529', 'Ba Chùa', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('6410', '5070703', 'Ân Hảo', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('6411', '5071101', 'Vĩnh Sơn', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('6412', '5071331', 'Cát Tiến', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('6413', '5071521', 'Tây Bình', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('6414', '5090107', '4', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('6415', '5090113', 'Hòa Hội', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('6416', '5090129', 'Bình Kiến', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('6417', '5090313', 'Xuân Quang 2', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('6418', '5090509', 'Xuân Hòa', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('6419', '5090905', 'Cà Lúi', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('6420', '5110105', 'Vĩnh Thọ', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6421', '5110113', 'Xương Huân', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6422', '5110119', 'Phước Tân', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6423', '5110137', 'Vĩnh Phương', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6424', '5110141', 'Vĩnh Thạnh', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6425', '4032317', 'Đồng Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6426', '4032325', 'Hồng Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6427', '4032357', 'Liên Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6428', '4032503', 'Diễn Lâm', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6429', '4032527', 'Diễn Vạn', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6430', '4032547', 'Diễn Nguyên', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6431', '4032549', 'Diễn Quảng', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6432', '4032907', 'Bồi Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6433', '4032915', 'Bắc Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6434', '4032935', 'Đà Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6435', '4032949', 'Xuân Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6436', '4032955', 'Nhân Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6437', '4032959', 'Mỹ Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6438', '4033141', 'Thanh Chi', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6439', '4033301', 'Thị trấn Quán Hành', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6440', '4033315', 'Nghi Tiến', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6441', '4033327', 'Nghi Xá', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6442', '4033357', 'Nghi Hoa', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6443', '4033515', 'Nam Xuân', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6444', '4033527', 'Nam Lộc', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6445', '4033705', 'Hưng Tây', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6446', '4050111', 'Thạch Trung', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6447', '4050301', 'Bắc Hồng', '', '296', '0');
INSERT INTO `dm_xa` VALUES ('6448', '4050303', 'Nam Hồng', '', '296', '0');
INSERT INTO `dm_xa` VALUES ('6449', '4050501', 'Thị trấn Nghi Xuân', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6450', '4050515', 'Xuân Yên', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6451', '4050521', 'Xuân Mỹ', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6452', '4050531', 'Xuân Lĩnh', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6453', '4050533', 'Xuân Liên', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6454', '4050719', 'Đức Yên', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6455', '4050735', 'Đức Hòa', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6456', '4050749', 'Đức Dũng', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6457', '4050753', 'Đức Giang', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6458', '4050765', 'Đức Bồng', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6459', '4050909', 'Sơn Lâm', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6460', '4050923', 'Sơn Giang', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6461', '4050925', 'Sơn Ninh', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6462', '4050955', 'Sơn Tân', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6463', '4051105', 'Tân Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6464', '4051113', 'Kim Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6465', '4051129', 'Vĩnh Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6466', '4051151', 'Tiến Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6467', '4051311', 'Thạch Sơn', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6468', '4051317', 'Thạch Châu', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6469', '4051327', 'Thạch Đỉnh', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6470', '4051329', 'Thạch Hải', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6471', '4051331', 'Thạch Tiến', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6472', '4051337', 'Thạch Hạ', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6473', '4051339', 'Thạch Đồng', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6474', '4051355', 'Thạch Lạc', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6475', '4051365', 'Thạch Đài', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6476', '4051541', 'Cẩm Hưng', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6477', '4051547', 'Cẩm Thịnh', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6478', '4051553', 'Cẩm Minh', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6479', '4051705', 'Vũ Quang', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6480', '4051717', 'Phương Mỹ', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6481', '4051719', 'Hà Linh', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6482', '4051741', 'Phú Phong', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6483', '4051745', 'Hương Lâm', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6484', '4051903', 'Kỳ Bắc', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6485', '4051905', 'Kỳ Tiến', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6486', '4051909', 'Kỳ Giang', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6487', '4051917', 'Kỳ Tây', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6488', '4051923', 'Kỳ Khang', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6489', '4051935', 'Kỳ Châu', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6490', '4070303', 'Hương Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6491', '4070315', 'Thạch Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6492', '4070521', 'Trung Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6493', '4070719', 'Quảng Xuân', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6494', '4070725', 'Quảng Thuận', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6495', '4070753', 'Quảng Thủy', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6496', '4070761', 'Quảng Lộc', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6497', '4070911', 'Lâm Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6498', '4070921', 'Cự Nẫm', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6499', '4070925', 'Sơn Lộc', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6500', '4070937', 'Mỹ Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6501', '4071305', 'Kim Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6502', '4071343', 'Cam Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6503', '4071345', 'Hưng Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6504', '4090113', 'Đông Giang', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('6505', '4090117', 'Triệu Lương', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('6506', '4090301', '1', '', '314', '0');
INSERT INTO `dm_xa` VALUES ('6507', '4090525', 'Vĩnh Lâm', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6508', '4090729', 'Gio Việt', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6509', '4090911', 'Cam Tuyền', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('6510', '4090913', 'Cam Hiếu', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('6511', '4091115', 'Triệu Đại', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6512', '4091119', 'Triệu Thuận', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6513', '4091135', 'Triệu Thành', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6514', '4091301', 'Thị trấn Hải Lăng', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6515', '4091311', 'Hải Quy', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6516', '4091313', 'Hải Vĩnh', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6517', '4091529', 'Hướng Lộc', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6518', '4091541', 'Xy', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6519', '4110109', 'Phú Hiệp', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6520', '4110115', 'Thuận Thành', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6521', '4110129', 'Phú Hội', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6522', '4110131', 'Phú Nhuận', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6523', '4110141', 'Hương Sơ', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6524', '4110509', 'Quảng Vinh', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6525', '4110515', 'Quảng Phú', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6526', '4110703', 'Hải Dương', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6527', '4110715', 'Hương Xuân', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6528', '4110717', 'Hương Chữ', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6529', '4110917', 'Phú An', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6530', '4110923', 'Phú Hải', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6531', '4110937', 'Vinh Phú', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6532', '4110939', 'Vinh An', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6533', '4110941', 'Vinh Hà', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6534', '4111105', 'Thủy Thanh', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6535', '4111317', 'Vinh Hiền', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6536', '4111523', 'Phú Vinh', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6537', '4111533', 'Hương Lâm', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6538', '4111711', 'Hương Giang', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6539', '4111719', 'Thượng Nhật', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6540', '4111721', 'Thượng Lộ', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6541', '5010103', 'Hải Châu II', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6542', '5010117', 'Phước Ninh', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6543', '5010307', 'Tam Thuận', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('6544', '4032327', 'Tăng Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6545', '4032345', 'Lý Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6546', '4032521', 'Diễn Hồng', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6547', '4032569', 'Diễn Thọ', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6548', '4032713', 'Cẩm Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6549', '4032909', 'Hồng Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6550', '4032953', 'Thuận Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6551', '4033115', 'Thanh Liên', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6552', '4033119', 'Thanh Hưng', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6553', '4033135', 'Đồng Văn', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6554', '4033137', 'Thanh Ngọc', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6555', '4033145', 'Thanh Khê', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6556', '4033331', 'Nghi Khánh', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6557', '4033363', 'Phúc Thọ', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6558', '4033365', 'Nghi Thái', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6559', '4033523', 'Nam Thượng', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6560', '4033537', 'Nam Cát', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6561', '4033709', 'Hưng Thái', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6562', '4033721', 'Hưng Lĩnh', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6563', '4033725', 'Hưng Xá', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6564', '4033729', 'Hưng Thắng', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6565', '4033733', 'Hưng Lợi', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6566', '4033745', 'Hưng Nhân', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6567', '4050105', 'Trần Phú', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6568', '4050117', 'Đại Nài', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6569', '4050309', 'Thuận Lộc', '', '296', '0');
INSERT INTO `dm_xa` VALUES ('6570', '4050517', 'Tiên Điền', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6571', '4050523', 'Xuân Thành', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6572', '4050527', 'Xuân Viên', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6573', '4050721', 'Đức Nhân', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6574', '4050729', 'Đức Thủy', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6575', '4050731', 'Đức Thịnh', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6576', '4050901', 'Thị trấn Tây Sơn', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6577', '4050907', 'Sơn Lĩnh', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6578', '4050953', 'Sơn Mỹ', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6579', '4050959', 'Sơn Phú', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6580', '4051101', 'Thị trấn Can Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6581', '4051109', 'Thiên Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6582', '4051121', 'Trường Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6583', '4051159', 'Mỹ Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6584', '4051301', 'Thị trấn Cày', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6585', '4051363', 'Bắc Sơn', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6586', '4051513', 'Cẩm Dương', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6587', '4051517', 'Cẩm Quang', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6588', '4051527', 'Cẩm Thạch', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6589', '4051529', 'Cẩm Duệ', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6590', '4051709', 'Hương Đại', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6591', '4051715', 'Phương Điền', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6592', '4051733', 'Gia Phố', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6593', '4051915', 'Kỳ Sơn', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6594', '4070305', 'Thanh Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6595', '4070327', 'Châu Hóa', '', '307', '0');
INSERT INTO `dm_xa` VALUES ('6596', '4070505', 'Hóa Phúc', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6597', '4070515', 'Xuân Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6598', '4070517', 'Yên Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6599', '4070723', 'Quảng Phúc', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6600', '4070743', 'Quảng Liên', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6601', '4070757', 'Quảng Minh', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6602', '4070763', 'Quảng Tân', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6603', '4070903', 'Thị trấn NT Việt Trung', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6604', '4070939', 'Hạ Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6605', '4071105', 'Trường Sơn', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6606', '4071113', 'Tân Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6607', '4071309', 'Hoa Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6608', '4090303', '2', '', '314', '0');
INSERT INTO `dm_xa` VALUES ('6609', '4090501', 'Thị trấn Hồ Xá', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6610', '4090513', 'Vĩnh Nam', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6611', '4090515', 'Vĩnh Khê', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6612', '4090517', 'Vĩnh Long', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6613', '4090523', 'Vĩnh Thạch', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6614', '4090531', 'Vĩnh Thành', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6615', '4090709', 'Trung Sơn', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6616', '4090715', 'Gio An', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6617', '4090723', 'Gio Sơn', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6618', '4090727', 'Linh Hải', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6619', '4091109', 'Triệu Vân', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6620', '4091309', 'Hải Khê', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6621', '4091319', 'Hải Thiện', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6622', '4091333', 'Hải Lệ', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6623', '4091341', 'Hải Chánh', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6624', '4091505', 'Hướng Lập', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6625', '4091515', 'Hướng Tân', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6626', '4091519', 'Tân Long', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6627', '4091521', 'Tân Lập', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6628', '4091527', 'Thuận', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6629', '4091531', 'Ba Tầng', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6630', '4091535', 'A Dơi', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6631', '4110107', 'Thuận Lộc', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6632', '4110135', 'Trường An', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6633', '4110301', 'Thị trấn Phong Điền', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6634', '4110315', 'Điền Hòa', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6635', '4110329', 'Phong Xuân', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6636', '4110513', 'Quảng Công', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6637', '4110705', 'Hương Phong', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6638', '4110713', 'Hương Vinh', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6639', '4110721', 'Hương Bình', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6640', '4110723', 'Hương Hồ', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6641', '4110725', 'Hồng Tiến', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6642', '4110731', 'Hương Thọ', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6643', '4110901', 'Phú Tân', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6644', '4110933', 'Vinh Thanh', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6645', '4111107', 'Thủy Dương', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6646', '4111323', 'Lộc Điền', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6647', '4111503', 'Hồng Thủy', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6648', '4111511', 'Hồng Kim', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6649', '4111517', 'Nhâm', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6650', '4111521', 'Sơn Thủy', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6651', '4111525', 'Hồng Hạ', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6652', '4111529', 'Hồng Thượng', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6653', '4111717', 'Thượng Long', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6654', '5010119', 'Bình Hiên', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('6655', '5010701', 'Bắc Mỹ An', '', '334', '0');
INSERT INTO `dm_xa` VALUES ('6656', '5010705', 'Hoà Hải', '', '334', '0');
INSERT INTO `dm_xa` VALUES ('6657', '5011125', 'Hoà Khương', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('6658', '5030117', 'Tam Lộc', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6659', '5030303', 'Cẩm Phô', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('6660', '5030521', 'A Ting', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('6661', '5030715', 'Đại Hiệp', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('6662', '5030731', 'Đại Hòa', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('6663', '4032335', 'Thịnh Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6664', '4032343', 'Minh Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6665', '4032363', 'Bảo Thành', '', '287', '0');
INSERT INTO `dm_xa` VALUES ('6666', '4032515', 'Diễn Mỹ', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6667', '4032525', 'Diễn Liên', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6668', '4032557', 'Diễn Tân', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6669', '4032567', 'Diễn Phú', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6670', '4032571', 'Diễn Lợi', '', '288', '0');
INSERT INTO `dm_xa` VALUES ('6671', '4032703', 'Thọ Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6672', '4032705', 'Tam Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6673', '4032901', 'Thị trấn Đô Lương', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6674', '4032905', 'Lam Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6675', '4032921', 'Hoà Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6676', '4032923', 'Đặng Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6677', '4032937', 'Lạc Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6678', '4032941', 'Thái Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6679', '4033109', 'Thanh Hoà', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6680', '4033113', 'Thanh Mỹ', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6681', '4033153', 'Thanh Thuỷ', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6682', '4033155', 'Thanh Dương', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6683', '4033309', 'Nghi Lâm', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6684', '4033323', 'Nghi Quang', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6685', '4033345', 'Nghi Thạch', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6686', '4033349', 'Nghi Liên', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6687', '4033353', 'Nghi Phong', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6688', '4033359', 'Nghi Kim', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6689', '4033505', 'Nam Nghĩa', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6690', '4033517', 'Xuân Hoà', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6691', '4033521', 'Nam Giang', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6692', '4033529', 'Hồng Long', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6693', '4033533', 'Kiêm Liên', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6694', '4033539', 'Khánh Sơn', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6695', '4033543', 'Nam Phúc', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6696', '4033545', 'Nam Cường', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6697', '4033717', 'Hưng Mỹ', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6698', '4033723', 'Hưng Long', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6699', '4033739', 'Hưng Nam', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6700', '4033741', 'Hưng Phúc', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6701', '4050103', 'Nam Hà', '', '295', '0');
INSERT INTO `dm_xa` VALUES ('6702', '4050505', 'Xuân Hội', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6703', '4050507', 'Xuân Trường', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6704', '4050703', 'Đức Tùng', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6705', '4050711', 'Liên Minh', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6706', '4050713', 'Đức La', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6707', '4050725', 'Yên Hồ', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6708', '4050733', 'Thái Yên', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6709', '4050739', 'Đức Long', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6710', '4050757', 'Đức Lĩnh', '', '298', '0');
INSERT INTO `dm_xa` VALUES ('6711', '4050929', 'Sơn Thịnh', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6712', '4050945', 'Sơn Thọ', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6713', '4050951', 'Sơn Hà', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6714', '4050963', 'Sơn Trà', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6715', '4050965', 'Sơn Trường', '', '299', '0');
INSERT INTO `dm_xa` VALUES ('6716', '4051111', 'An Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6717', '4051117', 'Song Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6718', '4051119', 'Gia Hanh', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6719', '4051123', 'Vượng Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6720', '4051139', 'ích Hậu', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6721', '4051155', 'Đồng Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6722', '4051157', 'Quang Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6723', '4051161', 'Sơn Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6724', '4051303', 'Thị trấn NT Thạch Ngọc', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6725', '4051305', 'Thạch Liên', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6726', '4051343', 'Thạch Môn', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6727', '4051347', 'Thạch Khê', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6728', '4051349', 'Thạch Trị', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6729', '4051351', 'Thạch Hưng', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6730', '4051361', 'Thạch Lưu', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6731', '4051371', 'Thạch Văn', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6732', '4051379', 'Thạch Hương', '', '301', '0');
INSERT INTO `dm_xa` VALUES ('6733', '4051711', 'Hương Minh', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6734', '4051727', 'Hương Long', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6735', '4051911', 'Kỳ Phú', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6736', '4051919', 'Kỳ Hợp', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6737', '4051921', 'Kỳ Lâm', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6738', '4051925', 'Kỳ Văn', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6739', '4051927', 'Kỳ Lạc', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6740', '4051937', 'Kỳ Tân', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6741', '4051949', 'Kỳ Liên', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6742', '4070105', 'Nam Lý', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6743', '4070111', 'Đồng Mỹ', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6744', '4070119', 'Đức Ninh', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6745', '4070123', 'Lộc Ninh', '', '306', '0');
INSERT INTO `dm_xa` VALUES ('6746', '4070501', 'Dân Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6747', '4070523', 'Minh Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6748', '4070703', 'Quảng Hợp', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6749', '4070705', 'Quảng Đông', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6750', '4070715', 'Cảnh Dương', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6751', '4070735', 'Quảng Phương', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6752', '4070745', 'Phù Hóa', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6753', '4070927', 'Vạn Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6754', '4070933', 'Hoà Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6755', '4070941', 'Bắc Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6756', '4070953', 'Trung Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6757', '4070955', 'Đại Trạch', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6758', '4071111', 'Hiền Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6759', '4071117', 'An Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6760', '4071119', 'Vạn Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6761', '4071303', 'Thị trấn NT Lệ Ninh', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6762', '4071313', 'Phú Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6763', '4071319', 'Văn Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6764', '4071325', 'Xuân Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6765', '4071331', 'Mỹ Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6766', '4071335', 'Tân Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6767', '4071347', 'Sen Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6768', '4090505', 'Vĩnh Thái', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6769', '4090705', 'Trung Hải', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6770', '4090731', 'Vĩnh Trường', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6771', '4091117', 'Triệu Lăng', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6772', '4091307', 'Hải Ba', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6773', '4091317', 'Hải Quế', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6774', '4091321', 'Hải Dương', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6775', '4091323', 'Hải Trường', '', '319', '0');
INSERT INTO `dm_xa` VALUES ('6776', '4091507', 'Hướng Phùng', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6777', '4091509', 'Hướng Sơn', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6778', '4091533', 'Thanh', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6779', '4091715', 'Tà Long', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6780', '4110103', 'Phú Bình', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6781', '4110139', 'An Cựu', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6782', '4110325', 'Phong Hiền', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6783', '4032707', 'Thành Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6784', '4032709', 'Bình Sơn', '', '289', '0');
INSERT INTO `dm_xa` VALUES ('6785', '4032947', 'Trung Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6786', '4032963', 'Đại Sơn', '', '290', '0');
INSERT INTO `dm_xa` VALUES ('6787', '4033105', 'Hạnh Lâm', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6788', '4033123', 'Thanh Văn', '', '291', '0');
INSERT INTO `dm_xa` VALUES ('6789', '4033321', 'Nghi Thuận', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6790', '4033329', 'Nghi Hợp', '', '292', '0');
INSERT INTO `dm_xa` VALUES ('6791', '4033507', 'Nam Thái', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6792', '4033513', 'Vân Diên', '', '293', '0');
INSERT INTO `dm_xa` VALUES ('6793', '4033719', 'Hưng Thịnh', '', '294', '0');
INSERT INTO `dm_xa` VALUES ('6794', '4050525', 'Xuân Hồng', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6795', '4050535', 'Cỗ Đạm', '', '297', '0');
INSERT INTO `dm_xa` VALUES ('6796', '4051107', 'Thịnh Lộc', '', '300', '0');
INSERT INTO `dm_xa` VALUES ('6797', '4051505', 'Cẩm Bình', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6798', '4051543', 'Cẩm Lộc', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6799', '4051545', 'Cẩm Trung', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6800', '4051551', 'Cẩm Lạc', '', '302', '0');
INSERT INTO `dm_xa` VALUES ('6801', '4051701', 'Thị trấn Hương Khê', '', '303', '0');
INSERT INTO `dm_xa` VALUES ('6802', '4051901', 'Thị trấn Kỳ Anh', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6803', '4051957', 'Kỳ Trinh', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6804', '4051959', 'Kỳ Thịnh', '', '304', '0');
INSERT INTO `dm_xa` VALUES ('6805', '4070511', 'Hóa Hợp', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6806', '4070519', 'Quy Hóa', '', '308', '0');
INSERT INTO `dm_xa` VALUES ('6807', '4070709', 'Quảng Phú', '', '309', '0');
INSERT INTO `dm_xa` VALUES ('6808', '4070901', 'Thị trấn Hoàn Lão', '', '310', '0');
INSERT INTO `dm_xa` VALUES ('6809', '4071103', 'Trường Xuân', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6810', '4071127', 'Hải Ninh', '', '311', '0');
INSERT INTO `dm_xa` VALUES ('6811', '4071341', 'Thanh Thủy', '', '312', '0');
INSERT INTO `dm_xa` VALUES ('6812', '4090115', 'Triệu Lễ', '', '313', '0');
INSERT INTO `dm_xa` VALUES ('6813', '4090533', 'Vĩnh Hà', '', '315', '0');
INSERT INTO `dm_xa` VALUES ('6814', '4090735', 'Gio Mai', '', '316', '0');
INSERT INTO `dm_xa` VALUES ('6815', '4090909', 'Cam Thủy', '', '317', '0');
INSERT INTO `dm_xa` VALUES ('6816', '4091111', 'Triệu Độ', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6817', '4091113', 'Triệu Trạch', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6818', '4091125', 'Triệu Hòa', '', '318', '0');
INSERT INTO `dm_xa` VALUES ('6819', '4091525', 'Húc', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6820', '4091717', 'Húc Nghì', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6821', '4110105', 'Tây Lộc', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6822', '4110117', 'Phú Hòa', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6823', '4110309', 'Phong Chương', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6824', '4110503', 'Quảng Thái', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6825', '4110511', 'Quảng Phước', '', '324', '0');
INSERT INTO `dm_xa` VALUES ('6826', '4110719', 'Hương An', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('6827', '4110913', 'Phú Thượng', '', '326', '0');
INSERT INTO `dm_xa` VALUES ('6828', '4111325', 'Lộc Bình', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6829', '4111501', 'Thị trấn A Lưới', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('6830', '4111707', 'Thượng Quảng', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6831', '5010703', 'Hoà Quý', '', '334', '0');
INSERT INTO `dm_xa` VALUES ('6832', '5010903', 'Hoà Khánh', '', '335', '0');
INSERT INTO `dm_xa` VALUES ('6833', '5011103', 'Hoà Bắc', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('6834', '5011119', 'Hoà Xuân', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('6835', '5030125', 'Tam Thăng', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6836', '5030305', 'Sơn Phong', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('6837', '5030929', 'Điện Minh', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('6838', '5031701', 'Thị trấn Đông Phú', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6839', '5032117', 'Tiên Cảnh', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6840', '5032121', 'Tiên Phong', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6841', '5032313', 'Phước Công', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('6842', '5032505', 'Tam Xuân II', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6843', '5032509', 'Tam Sơn', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6844', '5032519', 'Tam Hải', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6845', '5032725', 'Trà Giáp', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6846', '5032733', 'Trà Linh', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6847', '5050501', 'Thị trấn Châu ổ', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6848', '5050701', 'Trà Xuân', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6849', '5050721', 'Trà Lâm', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6850', '5050903', 'Tịnh ấn Tây', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6851', '5050905', 'Tịnh ấn Đông', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6852', '5050907', 'Tịnh Thọ', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6853', '5050919', 'Tịnh Bình', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('6854', '5051307', 'Sơn Bao', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6855', '5051319', 'Sơn Cao', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6856', '5051503', 'Thị trấn Sông Vệ', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('6857', '5051527', 'Nghĩa Thương', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('6858', '5051531', 'Nghĩa Phương', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('6859', '5051705', 'Hành Dũng', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('6860', '5070107', 'Quang Trung', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6861', '5070111', 'Ngô Mậy', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6862', '5070117', 'Lê Hồng Phong', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6863', '5070527', 'Hoài Hải', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('6864', '5070927', 'Mỹ Quang', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('6865', '5071113', 'Vĩnh Thịnh', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('6866', '5071529', 'Bình Nghi', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('6867', '5071701', 'Thị trấn Bình Định', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('6868', '5071705', 'Nhơn Thành', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('6869', '5071719', 'Nhơn Phúc', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('6870', '5071915', 'Phước Hiệp', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('6871', '5090317', 'Xuân Sơn Nam', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('6872', '5090321', 'Xuân Phước', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('6873', '5090511', 'Xuân Cảnh', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('6874', '5090515', 'Xuân Phương', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('6875', '5090707', 'An Ninh Tây', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('6876', '5091315', 'Đức Bình Tây', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('6877', '5110501', 'Thị trấn Ninh Hòa', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('6878', '5110907', 'Cam Hải Đông', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('6879', '5110933', 'Cam Phước Đông', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('6880', '5111103', 'Khánh Hiệp', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('6881', '5111119', 'Khánh Thành', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('6882', '6010101', 'Quang Trung', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('6883', '6010103', 'Quyết Thắng', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('6884', '6010309', 'Đắk Pék', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('6885', '6010507', 'Đắk Nông', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('6886', '6010709', 'Đắk Sao', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('6887', '6010729', 'Diên Bình', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('6888', '6010917', 'Đak Ruồng', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('6889', '6030521', 'Kơ Dang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6890', '6030545', 'Đăk Trôi', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6891', '6030711', 'Đăk Tơ Ver', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('6892', '6030719', 'Nghĩa Hòa', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('6893', '6031113', 'Tân An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('6894', '6031301', 'Thị trấn Kông Chro', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('6895', '6031501', 'Thị trấn Chư Ty', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('6896', '6031511', 'Ia Dom', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('6897', '6032111', 'Chư Mố', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('6898', '6032319', 'Ia Rmok', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('6899', '6032323', 'Uar', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('6900', '4091503', 'Thị trấn Lao Bảo', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6901', '4091539', 'A Túc', '', '320', '0');
INSERT INTO `dm_xa` VALUES ('6902', '4091711', 'Hải Phúc', '', '321', '0');
INSERT INTO `dm_xa` VALUES ('6903', '4110137', 'Phước Vĩnh', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6904', '4110143', 'Thủy Biều', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6905', '4110145', 'Hương Long', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6906', '4110149', 'Thủy An', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('6907', '4110305', 'Điền Môn', '', '323', '0');
INSERT INTO `dm_xa` VALUES ('6908', '4111101', 'Thị trấn Phú Bài', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('6909', '4111303', 'Vinh Hưng', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6910', '4111307', 'Lộc An', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('6911', '4111715', 'Hương Lộc', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('6912', '5010303', 'Thanh Lộc Đán', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('6913', '5030123', 'Tam Đàn', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('6914', '5030309', 'Cẩm Châu', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('6915', '5030503', 'Ch\'om', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('6916', '5030531', 'Za Hung', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('6917', '5030909', 'Điện Ngọc', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('6918', '5031303', 'Laêê', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('6919', '5031505', 'Bình Giang', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6920', '5031527', 'Bình Chánh', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6921', '5031541', 'Bình Nam', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('6922', '5031703', 'Quế Phước', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('6923', '5031903', 'Hiệp Hòa', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('6924', '5031905', 'Hiệp Thuận', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('6925', '5031909', 'Bình Lâm', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('6926', '5032111', 'Tiên Lãnh', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('6927', '5032515', 'Tam Hòa', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6928', '5032527', 'Tam Mỹ', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('6929', '5032709', 'Trà Dương', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6930', '5032713', 'Trà Bui', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('6931', '5050519', 'Bình Hải', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('6932', '5050719', 'Trà Sơn', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6933', '5050735', 'Trà Trung', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('6934', '5051309', 'Sơn Thành', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('6935', '5051525', 'Nghĩa An', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('6936', '5051709', 'Hành Đức', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('6937', '5052111', 'Đức Hiệp', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('6938', '5052121', 'Đức Phú', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('6939', '5052327', 'Phổ Vinh', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('6940', '5052513', 'Ba Trang', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('6941', '5052517', 'Ba Bích', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('6942', '5070121', 'Lê Lợi', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6943', '5070133', 'Nhơn Hội', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('6944', '5070303', 'An Trung', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('6945', '5070511', 'Hoài Phú', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('6946', '5070531', 'Hoài Mỹ', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('6947', '5070709', 'Dak Mang', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('6948', '5070711', 'Ân Tín', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('6949', '5070719', 'Ân Hữu', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('6950', '5071317', 'Cát Hải', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('6951', '5071503', 'Bình Tân', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('6952', '5071923', 'Phước An', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('6953', '5090725', 'An Hiệp', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('6954', '5090923', 'Sơn Hà', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('6955', '5091301', 'Thị trấn Hai Riêng', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('6956', '5110139', 'Vĩnh Ngọc', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6957', '5110147', 'Vĩnh Thái', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('6958', '5110305', 'Vạn Long', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('6959', '5110309', 'Vạn Thọ', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('6960', '5110533', 'Ninh Giang', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('6961', '5110713', 'Diên Phú', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('6962', '5110937', 'Cam Thịnh Tây', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('6963', '6010711', 'Đắk Tơ Kan', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('6964', '6010907', 'Ngok Tem', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('6965', '6010923', 'Đak Tờ Re', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('6966', '6011105', 'Đak HRing', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('6967', '6011113', 'Ngok Réo', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('6968', '6011317', 'Ya ly', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('6969', '6030105', 'Hội Thương', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('6970', '6030505', 'Đăk Đoa', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6971', '6030519', 'Kon Dơng', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6972', '6030523', 'H Neng', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6973', '6030527', 'Glar', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6974', '6030529', 'Ia Dơk', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('6975', '6031309', 'Đăk Tơ Pang', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('6976', '6031513', 'Ia Lang', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('6977', '6031711', 'Ia Tôr', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('6978', '6032315', 'Phú Cần', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('6979', '6050505', 'Ea Lê', '', '412', '0');
INSERT INTO `dm_xa` VALUES ('6980', '6050913', 'Ea Drông', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('6981', '6050915', 'Thống Nhất', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('6982', '6051309', 'Ea Tar', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('6983', '6051919', 'Hoà Đông', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('6984', '6052113', 'Hòa Phú', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('6985', '6052117', 'Trúc Sơn', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('6986', '6052513', 'Hòa Lễ', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('6987', '6052515', 'Ea Trul', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('6988', '6053113', 'Đắk Phơi', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('6989', '6053517', 'Quảng Khê', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('6990', '6070127', 'Xuân Trường', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6991', '6070717', 'Tu Tra', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6992', '6070901', 'Thị trấn Liên Nghĩa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6993', '6070905', 'Liên Hiệp', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6994', '6070917', 'Tà Hine', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6995', '6071303', 'Lộc Bảo', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6996', '6071319', 'Lộc An', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6997', '6071511', 'Gia Hiệp', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6998', '6071513', 'Tam Bố', '', null, '0');
INSERT INTO `dm_xa` VALUES ('6999', '6071525', 'Hòa Trung', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7000', '6071715', 'Đạ Ploa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7001', '7010307', 'Bình Khánh', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7002', '7010517', '09', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7003', '7010521', '11', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7004', '7010903', '02', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7005', '7011305', 'Tân Phú', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('7006', '7011515', '08', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('7007', '7011703', 'Phước Long B', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7008', '7011709', 'Long Trường', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7009', '7011913', '07', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7010', '7012115', '08', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('7011', '7012521', '16', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('7012', '7012703', '02', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7013', '7012721', '11', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7014', '7013121', '12', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7015', '7013311', 'Linh Chiểu', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7016', '7013315', 'Bình Chiểu', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7017', '7013503', 'Phú Hòa Đông', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7018', '7013931', 'Bình Lợi', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7019', '7013935', 'Tân Túc', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7020', '7014113', 'Hiệp Phước', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('7021', '4110133', 'Xuân Phú', '', '322', '0');
INSERT INTO `dm_xa` VALUES ('7022', '4110711', 'Hương Toàn', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('7023', '4111103', 'Thủy Vân', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('7024', '4111109', 'Thủy Bằng', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('7025', '4111329', 'Lộc Thủy', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('7026', '4111531', 'Hương Phong', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('7027', '5010311', 'Tân Chính', '', '332', '0');
INSERT INTO `dm_xa` VALUES ('7028', '5010507', 'Mân Thái', '', '333', '0');
INSERT INTO `dm_xa` VALUES ('7029', '5010905', 'Hoà Minh', '', '335', '0');
INSERT INTO `dm_xa` VALUES ('7030', '5030103', 'An Mỹ', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7031', '5030115', 'Tam Thành', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7032', '5030501', 'Thị trấn P Rao', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7033', '5030931', 'Điện Phương', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7034', '5031501', 'Thị trấn Hà Lam', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7035', '5031521', 'Bình Định', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7036', '5031529', 'Bình Tú', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7037', '5031537', 'Bình An', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7038', '5031911', 'Phước Trà', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7039', '5031919', 'Thăng Phước', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7040', '5032521', 'Tam Giang', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7041', '5032719', 'Trà Leng', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7042', '5050503', 'Bình Thới', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7043', '5050509', 'Bình Chánh', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7044', '5050525', 'Bình Phước', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7045', '5051511', 'Nghĩa Thắng', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7046', '5051515', 'Nghĩa Thuận', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7047', '5051723', 'Hành Trung', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7048', '5052107', 'Đức Thắng', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7049', '5052123', 'Đức Phong', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7050', '5052311', 'Phổ An', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7051', '5052527', 'Ba Tô', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7052', '5070109', 'Ghềnh Ráng', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7053', '5070127', 'Nhơn Phú', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7054', '5070509', 'Hoài Châu Bắc', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7055', '5070717', 'Ân Đức', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('7056', '5071307', 'Cát Tài', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7057', '5071911', 'Phước Quang', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7058', '5071921', 'Phước Nghĩa', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7059', '5090117', 'Hòa Định Đông', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7060', '5090303', 'Phú Mỡ', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7061', '5090911', 'Sơn Phước', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7062', '5090915', 'Sơn Xuân', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7063', '5091115', 'Hòa Đồng', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7064', '5091311', 'EaTrol', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('7065', '5110323', 'Xuân Sơn', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7066', '5110513', 'Ninh Sim', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7067', '5110539', 'Ninh Hà', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7068', '5110551', 'Ninh ích', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7069', '5110903', 'Cam Tân', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7070', '5110929', 'Cam Nghĩa', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7071', '5111117', 'Cầu Bà', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('7072', '5111307', 'Sơn Bình', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('7073', '6010901', 'Thị trấn Kon Plông', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('7074', '6010905', 'Măng Buk', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('7075', '6011115', 'Đak La', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('7076', '6030103', 'Diên Hồng', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7077', '6030301', 'Thị trấn KBang', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7078', '6030303', 'Đăk Rong', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7079', '6030315', 'Đông', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7080', '6030905', 'Ia Hrung', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7081', '6030909', 'Ia Tô', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7082', '6031311', 'SRó', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('7083', '6031705', 'Thăng Hưng', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7084', '6031707', 'Ia Phìn', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7085', '6031713', 'Ia Boòng', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7086', '6031923', 'Ia Ko', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('7087', '6031927', 'Ia Le', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('7088', '6032327', 'Krông Năng', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('7089', '6050125', 'Khánh Xuân', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7090', '6050307', 'Ea Ral', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('7091', '6050309', 'Ea Wy', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('7092', '6050509', 'Ea Súp', '', '412', '0');
INSERT INTO `dm_xa` VALUES ('7093', '6051107', 'Cuôr KNia', '', '415', '0');
INSERT INTO `dm_xa` VALUES ('7094', '6051317', 'Ea KPam', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7095', '6051911', 'Ea KNuec', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7096', '6052707', 'Đắk Lao', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('7097', '6052919', 'Quảng Phú', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('7098', '6070109', '5', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7099', '6070303', '2', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7100', '6071127', 'Đan Phượng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7101', '6071305', 'Lộc Bắc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7102', '6071307', 'Lộc Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7103', '6071309', 'Lộc Phú', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7104', '6071503', 'Đinh Trang Thượng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7105', '6071527', 'Hòa Nam', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7106', '6071911', 'Quảng Trị', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7107', '6072103', 'Tiên Hoàng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7108', '6072115', 'Tư Nghĩa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7109', '7010313', 'An Lợi Đông', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7110', '7010315', 'Bình Trưng Tây', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7111', '7010505', '03', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7112', '7010901', '01', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7113', '7010915', '08', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7114', '7011307', 'Tân Thuận Đông', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('7115', '7011525', '13', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('7116', '7011725', 'Phú Hữu', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7117', '7012121', '11', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('7118', '7012519', '15', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('7119', '7012723', '12', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7120', '7012731', '16', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7121', '7012735', '18', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7122', '7013123', '13', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7123', '7013129', '17', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7124', '7013323', 'Linh Trung', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7125', '7013907', 'Đa Phước', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7126', '7013937', 'Tân Kiên', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7127', '7050119', 'Thành Hải', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('7128', '7070517', 'Lộc Hòa', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7129', '7070705', 'Bom Bo', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('7130', '7070719', 'Nghĩa Trung', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('7131', '7070925', 'Đồng Nơ', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7132', '7090515', 'Tân Hiệp', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7133', '7090703', 'Phan', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('7134', '7090911', 'Trí Bình', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('7135', '7091103', 'Thạnh Tân', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('7136', '7091115', 'Long Thành Bắc', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('7137', '7091505', 'Bàu Đồn', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('7138', '7110105', 'Chánh Nghĩa', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('7139', '7110337', 'Lai Hưng', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7140', '7110509', 'Phước Sang', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7141', '4110727', 'Bình Điền', '', '325', '0');
INSERT INTO `dm_xa` VALUES ('7142', '4111305', 'Lộc Bổn', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('7143', '4111309', 'Lộc Sơn', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('7144', '4111321', 'Lộc Hòa', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('7145', '4111509', 'Bắc Sơn', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('7146', '4111713', 'Hương Hoà', '', '330', '0');
INSERT INTO `dm_xa` VALUES ('7147', '5010101', 'Hải Châu I', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('7148', '5011101', 'Hoà Thọ', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7149', '5011123', 'Hoà Phong', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7150', '5030121', 'Tam An', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7151', '5030313', 'Cẩm Kim', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('7152', '5030509', 'Lăng', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7153', '5030513', 'Bhallê', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7154', '5030535', 'Kà Dăng', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7155', '5030703', 'Đại Sơn', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7156', '5030729', 'Đại Cường', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7157', '5030901', 'Thị trấn Vĩnh Điện', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7158', '5030923', 'Điện Quang', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7159', '5031117', 'Duy Trung', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7160', '5031533', 'Bình Hải', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7161', '5031921', 'Bình Sơn', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7162', '5032529', 'Tam Trà', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7163', '5050109', 'Nghĩa Lộ', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('7164', '5050119', 'Nghĩa Dũng', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('7165', '5050531', 'Bình Long', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7166', '5050915', 'Tịnh Phong', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7167', '5050935', 'Tịnh Sơn', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7168', '5051103', 'Sơn Mùa', '', '357', '0');
INSERT INTO `dm_xa` VALUES ('7169', '5051107', 'Sơn Tinh', '', '357', '0');
INSERT INTO `dm_xa` VALUES ('7170', '5051713', 'Hành Thịnh', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7171', '5052313', 'Phổ Quang', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7172', '5052511', 'Ba Vinh', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7173', '5052535', 'Ba Liên', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7174', '5070309', 'An Toàn', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('7175', '5070923', 'Mỹ Thành', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7176', '5071111', 'Vĩnh Quang', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('7177', '5071301', 'Thị trấn Ngô Mây', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7178', '5071507', 'Bình Thuận', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('7179', '5071913', 'Phước Sơn', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7180', '5072103', 'Canh Liên', '', '375', '0');
INSERT INTO `dm_xa` VALUES ('7181', '5072111', 'Canh Hòa', '', '375', '0');
INSERT INTO `dm_xa` VALUES ('7182', '5090125', 'Hòa Trị', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7183', '5090127', 'Hòa Kiến', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7184', '5090501', 'Thị trấn Sông Cầu', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('7185', '5090721', 'An Cư', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7186', '5110123', 'Phước Hải', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7187', '5110311', 'Vạn Bình', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7188', '5110511', 'Ninh Hải', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7189', '5110705', 'Diên Điền', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7190', '5110941', 'Cam Lập', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7191', '5111101', 'Thị trấn Khánh Vĩnh', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('7192', '5111313', 'Ba Cụm Bắc', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('7193', '6010111', 'Kroong', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7194', '6010301', 'Thị trấn Đắk Glei', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7195', '6010321', 'Đắk Môn', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7196', '6010723', 'Đắk Hà', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7197', '6030121', 'Chư á', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7198', '6030501', 'Thị trấn Mang Yang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7199', '6031319', 'Chư Long', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('7200', '6031721', 'Ia Vê', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7201', '6032115', 'Ia Piar', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7202', '6050105', 'Tân An', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7203', '6050121', 'Tự An', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7204', '6050901', 'Thị trấn Buôn Hồ', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('7205', '6051111', 'Ea Nuôl', '', '415', '0');
INSERT INTO `dm_xa` VALUES ('7206', '6051915', 'Hòa An', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7207', '6051927', 'Vụ Bổn', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7208', '6051929', 'Ea Uy', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7209', '6052319', 'Dur KMăl', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7210', '6052525', 'Yang Mao', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('7211', '6053117', 'Krông Nô', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('7212', '6053305', 'Đắk R\'Tíh', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7213', '6070115', '8', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7214', '6070121', '11', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7215', '6070317', 'Lộc Nga', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7216', '6070703', 'Thị trấn D\'Ran', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7217', '6070711', 'Quảng Lập', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7218', '6071505', 'Tân Thượng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7219', '6072117', 'Phước Cát 1', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7220', '7010103', 'Đa Kao', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('7221', '7010111', 'Phạm Ngũ Lão', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('7222', '7010507', '04', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7223', '7010523', '12', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7224', '7010709', '05', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7225', '7010727', '16', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7226', '7011107', '04', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('7227', '7011503', '02', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('7228', '7012105', '03', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('7229', '7012319', 'Tân Thới Hiệp', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('7230', '7012509', '07', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('7231', '7012711', '06', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7232', '7012717', '09', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7233', '7013515', 'Tân An Hội', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7234', '7013519', 'Tân Phú Trung', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7235', '7013539', 'Phước Hiệp', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7236', '7013719', 'Bà Điểm', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('7237', '7013915', 'Bình Chánh', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7238', '7050321', 'Phước Bình', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7239', '7050501', 'Thị trấn Khánh Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7240', '7050517', 'Nhơn Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7241', '7050701', 'Thị trấn Phước Dân', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('7242', '7070307', 'Bù Gia Mâp', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('7243', '7070309', 'Đức Hạnh', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('7244', '7070329', 'Long Tân', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('7245', '7070923', 'Tân Quan', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7246', '7090105', '2', '', '471', '0');
INSERT INTO `dm_xa` VALUES ('7247', '7090701', 'Suối Đá', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('7248', '7090711', 'Chà Là', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('7249', '7091119', 'Trường Đông', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('7250', '7091307', 'Tiên Thuận', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('7251', '7091309', 'Long Khánh', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('7252', '7110113', 'Định Hòa', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('7253', '7110117', 'Tương Bình Hiệp', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('7254', '7110341', 'Chánh Phú Hòa', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7255', '7110701', 'Thị trấn Lái Thiêu', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('7256', '7130135', 'An Bình', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7257', '7130707', 'Vĩnh Tân', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('7258', '7130903', 'Gia Tân 1', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7259', '7130941', 'Quảng Tiến', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7260', '7130947', 'Bắc Sơn', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7261', '4111121', 'Dương Hòa', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('7262', '4111123', 'Phú Sơn', '', '327', '0');
INSERT INTO `dm_xa` VALUES ('7263', '4111327', 'Lộc Trì', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('7264', '4111331', 'Lộc Vĩnh', '', '328', '0');
INSERT INTO `dm_xa` VALUES ('7265', '4111513', 'Hồng Bắc', '', '329', '0');
INSERT INTO `dm_xa` VALUES ('7266', '5010109', 'Thuận Phước', '', '331', '0');
INSERT INTO `dm_xa` VALUES ('7267', '5011105', 'Hoà Ninh', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7268', '5011121', 'Hoà Nhơn', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7269', '5030109', 'Phước Hòa', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7270', '5030317', 'Cẩm Thanh', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('7271', '5030907', 'Điện Thắng', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7272', '5031511', 'Bình Triều', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7273', '5031513', 'Bình Đào', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7274', '5031515', 'Bình Minh', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7275', '5050513', 'Bình Khương', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7276', '5050533', 'Bình Minh', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7277', '5050927', 'Tịnh Bắc', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7278', '5051507', 'Nghĩa Lâm', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7279', '5051703', 'Hành Thuận', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7280', '5051719', 'Hành Tín Đông', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7281', '5052101', 'Thị trấn Mộ Đức', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7282', '5052103', 'Đức Nhuận', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7283', '5052307', 'Phổ Văn', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7284', '5052509', 'Ba Thành', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7285', '5070313', 'An Hòa', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('7286', '5070721', 'Bok Tới', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('7287', '5070929', 'Mỹ Hiệp', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7288', '5071309', 'Cát Khánh', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7289', '5071313', 'Cát Hanh', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7290', '5071321', 'Cát Trinh', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7291', '5071329', 'Cát Tân', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7292', '5071513', 'Tây An', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('7293', '5071723', 'Nhơn Lộc', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7294', '5071727', 'Nhơn Thọ', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7295', '5071903', 'Thị trấn Diêu Trì', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7296', '5072109', 'Canh Thuận', '', '375', '0');
INSERT INTO `dm_xa` VALUES ('7297', '5090109', '5', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7298', '5090311', 'Xuân Quang 1', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7299', '5090729', 'An Mỹ', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7300', '5090907', 'Krông Pa', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7301', '5091109', 'Hòa Mỹ Tây', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7302', '5091305', 'Ea Lâm', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('7303', '5110107', 'Ngọc Hiệp', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7304', '5110117', 'Phương Sài', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7305', '5110145', 'Vĩnh Trung', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7306', '5110301', 'Thị trấn Vạn Giã', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7307', '5110717', 'Diên Phước', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7308', '5110901', 'Thị trấn Ba Ngòi', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7309', '5110939', 'Cam Thịnh Đông', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7310', '5111105', 'Khánh Bình', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('7311', '5111113', 'Khánh Nam', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('7312', '6010109', 'Đắk Cấm', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7313', '6010121', 'Đoàn Kết', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7314', '6010125', 'Đắk Rơ Wa', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7315', '6010305', 'Đắk Man', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7316', '6010311', 'Đắk Choong', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7317', '6011313', 'Sa Bình', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('7318', '6030107', 'Hội Phú', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7319', '6030903', 'Ia Sao', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7320', '6030913', 'Ia O', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7321', '6030915', 'Ia Dêr', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7322', '6031109', 'Cư An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('7323', '6031321', 'Yang Nam', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('7324', '6031515', 'Ia Kriêng', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('7325', '6031925', 'Nhơn Hòa', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('7326', '6032309', 'Đất Bằng', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('7327', '6032325', 'Chư RCăm', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('7328', '6050107', 'Thống Nhất', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7329', '6050117', 'Tân Thành', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7330', '6050319', 'Ea Nam', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('7331', '6050503', 'Ya Tờ Mốt', '', '412', '0');
INSERT INTO `dm_xa` VALUES ('7332', '6050903', 'Cư Né', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('7333', '6051301', 'Thị trấn Ea Pốk', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7334', '6051327', 'Cư Suê', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7335', '6051701', 'Thị trấn M\'Đrắk', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('7336', '6051923', 'Hòa Tiến', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7337', '6052709', 'Đắk Sắk', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('7338', '6052913', 'Đức Xuyên', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('7339', '6053309', 'Nhân Cơ', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7340', '6070101', '1', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7341', '6070113', '7', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7342', '6070505', 'Đạ Sar', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7343', '6071111', 'Phi Liêng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7344', '6071123', 'Hoài Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7345', '6072121', 'Quảng Ngãi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7346', '7010101', 'Tân Định', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('7347', '7010511', '06', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7348', '7010707', '04', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7349', '7010913', '07', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7350', '7010925', '13', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7351', '7011723', 'Long Phước', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7352', '7011907', '04', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7353', '7011911', '06', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7354', '7011927', '14', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7355', '7012727', '14', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7356', '7013101', '01', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7357', '7013109', '05', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7358', '7013117', '10', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7359', '7013505', 'Tân Thạnh Đông', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7360', '7013509', 'Trung An', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7361', '7013525', 'An Nhơn Tây', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7362', '7014103', 'Phú Xuân', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('7363', '7050331', 'Phước Thắng', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7364', '7050521', 'Công Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7365', '7070311', 'Đa Kia', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('7366', '7070505', 'Thiện Hưng', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7367', '7070911', 'An Phú', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7368', '7090507', 'Tân Hội', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7369', '7090509', 'Tân Hoà', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7370', '7090513', 'Suối Dây', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7371', '7091111', 'Hiệp Ninh', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('7372', '7091303', 'Long Phước', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('7373', '7110343', 'An Điền', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7374', '7110349', 'Hòa Lợi', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7375', '7110717', 'An Sơn', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('7376', '7110725', 'Bình An', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('7377', '7130147', 'Tân Hạnh', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7378', '7130321', 'Phú Trung', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7379', '7130327', 'Phú Xuân', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7380', '7130509', 'Ngọc Định', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('7381', '7130515', 'Phú Hòa', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('7382', '5011107', 'Hoà Sơn', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7383', '5011109', 'Hoà Phát', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7384', '5030129', 'Tam Vinh', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7385', '5030311', 'Cẩm An', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('7386', '5030515', 'A Vương', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7387', '5030525', 'Ba', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7388', '5030717', 'Đại Thạnh', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7389', '5030915', 'Điện Phước', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7390', '5031119', 'Duy Phước', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7391', '5031127', 'Duy Hải', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7392', '5031317', 'Đacpring', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('7393', '5031517', 'Bình Lãnh', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7394', '5031707', 'Quế Ninh', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7395', '5031719', 'Quế Xuân', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7396', '5031917', 'Quế Lưu', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7397', '5032303', 'Phước Hiệp', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('7398', '5032511', 'Tam Thạnh', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7399', '5032525', 'Tam Nghĩa', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7400', '5032717', 'Trà Tân', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7401', '5050527', 'Bình Trung', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7402', '5050537', 'Bình Chương', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7403', '5050539', 'Bình Thanh', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7404', '5050901', 'Thị trấn Sơn Tịnh', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7405', '5051313', 'Sơn Nham', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('7406', '5051535', 'Nghĩa Phú', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7407', '5052315', 'Phổ Ninh', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7408', '5052515', 'Ba Lế', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7409', '5052519', 'Ba Vì', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7410', '5070115', 'Trần Hưng Đạo', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7411', '5070119', 'Trần Phú', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7412', '5070507', 'Hoài Châu', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7413', '5070525', 'Hoài Tân', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7414', '5070911', 'Mỹ Lợi', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7415', '5070913', 'Mỹ An', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7416', '5070919', 'Mỹ Thọ', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7417', '5070921', 'Mỹ Hòa', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7418', '5070931', 'Mỹ Tài', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7419', '5071107', 'Vĩnh Hiệp', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('7420', '5071109', 'Vĩnh Hảo', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('7421', '5071315', 'Cát Thành', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7422', '5071711', 'Nhơn Phong', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7423', '5071907', 'Phước Hưng', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7424', '5090507', 'Xuân Bình', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('7425', '5090715', 'An Xuân', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7426', '5110325', 'Vạn Hưng', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7427', '5110529', 'Ninh Đa', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7428', '5110707', 'Diên Xuân', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7429', '5111121', 'Khánh Phú', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('7430', '5111305', 'Sơn Lâm', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('7431', '6010117', 'Đắk Blà', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7432', '6010315', 'Ngọc Linh', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7433', '6010317', 'Đắk Long', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7434', '6010503', 'Đắk Ang', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('7435', '6010513', 'Sa Loong', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('7436', '6010717', 'Ngọk Tụ', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7437', '6010909', 'Đak Kôi', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('7438', '6011303', 'Rơ Kơi', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('7439', '6011305', 'Mô Rai', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('7440', '6011309', 'Sa Sơn', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('7441', '6030115', 'Biển Hồ', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7442', '6030313', 'Lơ Ku', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7443', '6030513', 'Kon Gang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7444', '6031107', 'Cửu An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('7445', '6031119', 'An Thành', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('7446', '6031519', 'Ia Nan', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('7447', '6032113', 'Ia Tul', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7448', '6050103', 'Tân Hoà', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7449', '6050135', 'Ea Kao', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7450', '6050705', 'Ea Tam', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('7451', '6050917', 'Ea Siên', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('7452', '6051303', 'Thị trấn Quảng Phú', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7453', '6051311', 'Cư Dliê M\'nông', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7454', '6051501', 'Thị trấn Ea Kar', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7455', '6051511', 'Ea Tih', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7456', '6051513', 'Ea Đar', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7457', '6051515', 'Ea Kmút', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7458', '6052105', 'Nam Dong', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('7459', '6052521', 'Hòa Sơn', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('7460', '6052713', 'Thuận An', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('7461', '6052915', 'Ea R\'Bin', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('7462', '6052917', 'Đắk Nang', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('7463', '6053101', 'Thị trấn Liên Sơn', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('7464', '6053303', 'Đắk Búk So', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7465', '6070103', '2', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7466', '6070123', '12', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7467', '6070315', 'Lộc Thanh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7468', '6070503', 'Đạ Chais', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7469', '6070701', 'Thị trấn Thạnh Mỹ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7470', '6070919', 'Ninh Loan', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7471', '6071301', 'Thị trấn Lộc Thắng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7472', '6071315', 'Lộc Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7473', '6071703', 'Thị trấn Đạ M\'ri', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7474', '6071711', 'Đạ Oai', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7475', '6071907', 'Quốc Oai', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7476', '7010109', 'Nguyễn Thái Bình', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('7477', '7010513', '07', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7478', '7010713', '08', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7479', '7011105', '03', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('7480', '7011701', 'Phước Long A', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7481', '7011711', 'Trường Thạnh', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7482', '7011717', 'Hiệp Phú', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7483', '7011919', '10', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7484', '7012725', '13', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7485', '7012901', '01', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7486', '7012929', '22', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7487', '7013321', 'Tam Bình', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7488', '7013537', 'Bình Mỹ', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7489', '7013541', 'Trung Lập Hạ', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7490', '7013713', 'Xuân Thới Sơn', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('7491', '7013903', 'Bình Hưng', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7492', '7013917', 'Bình Trị Đông', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7493', '7014105', 'Phước Kiển', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('7494', '7050123', 'Đông Hải', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('7495', '7050307', 'Mỹ Sơn', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7496', '7050309', 'Hòa Sơn', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7497', '7050313', 'Phước Trung', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7498', '7050319', 'Phước Hòa', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7499', '7050507', 'Tân Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7500', '7050511', 'Xuân Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7501', '7050707', 'Phước Hậu', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('7502', '7050713', 'Phước Hải', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('7503', '5011111', 'Hoà Tiến', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7504', '5030101', 'Tân Thạnh', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7505', '5030111', 'An Sơn', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7506', '5030723', 'Đại Phong', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7507', '5030919', 'Điện Nam', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7508', '5031121', 'Duy Thành', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7509', '5031307', 'LaDêê', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('7510', '5031313', 'Cà Dy', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('7511', '5032301', 'Thị trấn Khâm Đức', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('7512', '5032507', 'Tam Tiến', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7513', '5032729', 'Trà Mai', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7514', '5032735', 'Trà Nam', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7515', '5050507', 'Bình Thạnh', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7516', '5050547', 'Bình Châu', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7517', '5050937', 'Tịnh Minh', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7518', '5051523', 'Nghĩa Hòa', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7519', '5051715', 'Hành Thiện', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7520', '5052301', 'Thị trấn Đức Phổ', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7521', '5052325', 'Phổ Thạnh', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7522', '5070101', 'Trần Quang Diệu', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7523', '5070103', 'Bùi Thị Xuân', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7524', '5070523', 'Hoài Hương', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7525', '5070533', 'Hoài Đức', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7526', '5070915', 'Mỹ Phong', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('7527', '5071103', 'Vĩnh Kim', '', '370', '0');
INSERT INTO `dm_xa` VALUES ('7528', '5071319', 'Cát Hiệp', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7529', '5071515', 'Bình Hòa', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('7530', '5071525', 'Tây Xuân', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('7531', '5071721', 'Nhơn Khánh', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7532', '5071901', 'Thị trấn Tuy Phước', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7533', '5071905', 'Phước Thắng', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7534', '5090101', '1', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7535', '5090123', 'Hòa Quang', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7536', '5090703', 'An Thạch', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7537', '5090709', 'An Ninh Đông', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7538', '5091107', 'Hòa Phong', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7539', '5091135', 'Hòa Xuân Đông', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7540', '5110507', 'Ninh Thượng', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7541', '5110905', 'Cam Hòa', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7542', '5110913', 'Cam Hải Tây', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7543', '5110923', 'Cam An Bắc', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7544', '5110935', 'Cam Phúc Nam', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7545', '6010107', 'Thống Nhất', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7546', '6010313', 'Mường Hoong', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7547', '6010501', 'Thị trấn Plei Cần', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('7548', '6010715', 'Ngok Yêu', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7549', '6010727', 'Pô Kô', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7550', '6030101', 'Yên Đỗ', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7551', '6030325', 'Đăk HLơ', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7552', '6030525', 'Tân Bình', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7553', '6030911', 'Ia Kênh', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7554', '6031101', 'Thị trấn An Khê', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('7555', '6031105', 'Hà Tam', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('7556', '6031509', 'Ia Kla', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('7557', '6032121', 'Ia Hiao', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7558', '6050301', 'Thị trấn Ea Drăng', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('7559', '6050709', 'Tam Giang', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('7560', '6050909', 'Đoàn Kết', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('7561', '6051313', 'Ea H\'đinh', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7562', '6051503', 'Thị trấn Ea Knốp', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7563', '6051517', 'Cư Ni', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7564', '6051719', 'Cư K Róa', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('7565', '6051925', 'Tân Tiến', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7566', '6052109', 'Đắk DRông', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('7567', '6052315', 'Hòa Hiệp', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7568', '6053311', 'Kiến Đức', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7569', '6053507', 'Trường Xuân', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('7570', '6070119', '10', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7571', '6070125', 'Xuân Thọ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7572', '6070907', 'Bình Thạnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7573', '6071101', 'Thị trấn Đinh Văn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7574', '6071313', 'Lộc Ngãi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7575', '6071317', 'Lộc Tân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7576', '6071523', 'Hòa Ninh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7577', '6071707', 'Hà Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7578', '6072107', 'Gia Viễn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7579', '7010301', 'An Phú', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7580', '7010309', 'Bình An', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7581', '7010317', 'Bình Trưng Đông', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7582', '7010321', 'Thạnh Mỹ Lợi', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7583', '7010723', '14', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7584', '7011121', '11', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('7585', '7011123', '12', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('7586', '7011527', '14', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('7587', '7011905', '03', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7588', '7011915', '08', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7589', '7011921', '11', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7590', '7011923', '12', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7591', '7012107', '04', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('7592', '7012111', '06', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('7593', '7012317', 'Thới An', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('7594', '7012733', '17', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7595', '7012905', '03', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7596', '7012923', '17', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7597', '7013517', 'Tân Thông Hội', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7598', '7050323', 'Phước Tân', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7599', '7050509', 'Hộ Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7600', '7050519', 'Vĩnh Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7601', '7050703', 'Phước Sơn', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('7602', '7050709', 'Phước Thuận', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('7603', '7070113', 'Tân Lợi', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('7604', '7070717', 'Thống Nhất', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('7605', '7070903', 'Thị trấn Chơn Thành', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7606', '7070905', 'Thanh An', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7607', '7070931', 'Nha Bích', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7608', '7090101', '1', '', '471', '0');
INSERT INTO `dm_xa` VALUES ('7609', '7090505', 'Tân Đông', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7610', '7091515', 'Phước Trạch', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('7611', '7091711', 'Phước Lưu', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('7612', '7110303', 'Thị trấn Dầu Tiếng', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7613', '7110327', 'Long Tân', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7614', '7110351', 'Phú An', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7615', '7110545', 'Tân Vĩnh Hiệp', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7616', '7110703', 'Thị trấn Dĩ An', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('7617', '7130311', 'Tà Lài', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7618', '7130319', 'Phú Sơn', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7619', '7130505', 'Phú Tân', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('7620', '7130703', 'Phú Lý', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('7621', '7130709', 'Tân An', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('7622', '5011115', 'Hoà Phước', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7623', '5030507', 'Tr\'Hy', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7624', '5030913', 'Điện Thọ', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7625', '5031105', 'Duy Phú', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7626', '5031509', 'Bình Phục', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7627', '5032307', 'Phước Năng', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('7628', '5032501', 'Thị trấn Núi Thành', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7629', '5032523', 'Tam Quang', '', '350', '0');
INSERT INTO `dm_xa` VALUES ('7630', '5032701', 'Thị trấn Trà My', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7631', '5050921', 'Tịnh Kỳ', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7632', '5050923', 'Tịnh Khê', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7633', '5051101', 'Sơn Dung', '', '357', '0');
INSERT INTO `dm_xa` VALUES ('7634', '5051519', 'Nghĩa Điền', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7635', '5052319', 'Phổ Nhơn', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7636', '5070131', 'Nhơn Hải', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7637', '5070307', 'An Vinh', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('7638', '5070701', 'Thị trấn Tăng Bạt Hổ', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('7639', '5070715', 'Ân Phong', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('7640', '5071303', 'Cát Sơn', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7641', '5071713', 'Nhơn Hậu', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7642', '5071917', 'Phước Lộc', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7643', '5071925', 'Phước Thành', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('7644', '5072101', 'Canh Hiệp', '', '375', '0');
INSERT INTO `dm_xa` VALUES ('7645', '5090111', '6', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7646', '5090305', 'Đa Lộc', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7647', '5090307', 'Xuân Lãnh', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7648', '5090319', 'Xuân Quang 3', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7649', '5090505', 'Xuân Hải', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('7650', '5091103', 'Sơn Thành', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7651', '5091319', 'Sơn Giang', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('7652', '5110109', 'Vạn Thắng', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7653', '5110135', 'Vĩnh Lương', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7654', '5110317', 'Vạn Thắng', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7655', '5110543', 'Ninh Tân', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7656', '5110727', 'Diên Tân', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7657', '5110729', 'Diên Hòa', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7658', '5110739', 'Suối Cát', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7659', '5110931', 'Cam Phúc Bắc', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7660', '5111123', 'Sơn Thái', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('7661', '5111301', 'Thị trấn Tô Hạp', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('7662', '5111315', 'Ba Cụm Nam', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('7663', '6010105', 'Thắng Lợi', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7664', '6010913', 'Hiếu', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('7665', '6010921', 'Đak Pne', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('7666', '6030109', 'Hoa Lư', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7667', '6030125', 'Diên Phú', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7668', '6030311', 'Sơ Pai', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7669', '6030535', 'Ia Pết', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7670', '6030709', 'Ia Mơ Nông', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('7671', '6030919', 'Ia Pếch', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7672', '6031507', 'Ia Din', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('7673', '6031719', 'Ia Me', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7674', '6031913', 'Ia HLốp', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('7675', '6032101', 'Thị trấn Ayun Pa', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7676', '6032103', 'Pờ Tó', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7677', '6032119', 'Ia Trok', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7678', '6050507', 'Ea Bung', '', '412', '0');
INSERT INTO `dm_xa` VALUES ('7679', '6051325', 'Ea M\'nang', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7680', '6051521', 'Ea Ô', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7681', '6052101', 'Thị trấn Ea T\'Ling', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('7682', '6052303', 'Cư Ê Wi', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7683', '6052307', 'Ea Tiêu', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7684', '6052309', 'Ea BHốk', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7685', '6052505', 'Cư KTy', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('7686', '6052705', 'Đức Mạnh', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('7687', '6052921', 'Nam Ka', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('7688', '6053505', 'Quảng Sơn', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('7689', '6070105', '3', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7690', '6070311', 'Lộc Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7691', '6070501', 'Lát', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7692', '6070911', 'Tân Hội', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7693', '6071121', 'Phúc Thọ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7694', '6071133', 'Mê Linh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7695', '6071901', 'Thị trấn Đạ Tẻh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7696', '6072105', 'Phước Cát 2', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7697', '7010117', 'Nguyễn Cư Trinh', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('7698', '7010519', '10', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('7699', '7010717', '10', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7700', '7010919', '10', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7701', '7010927', '14', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7702', '7011127', '14', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('7703', '7011313', 'Tân Kiểng', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('7704', '7011513', '07', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('7705', '7011529', '15', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('7706', '7012315', 'Hiệp Thành', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('7707', '7012903', '02', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7708', '7012931', '24', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7709', '7013115', '09', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7710', '7013309', 'Linh Xuân', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7711', '7013313', 'Trường Thọ', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7712', '7013317', 'Linh Tây', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7713', '7013527', 'Trung Lập Thượng', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7714', '7013711', 'Nhị Bình', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('7715', '7013921', 'Bình Hưng Hòa', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7716', '7014107', 'Phước Lộc', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('7717', '7014109', 'Nhơn Đức', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('7718', '7050107', 'Tấn Tài', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('7719', '7050109', 'Phủ Hà', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('7720', '7050503', 'Phước Kháng', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7721', '7050711', 'An Hải', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('7722', '7070319', 'Phước Tín', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('7723', '7070511', 'Lộc An', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7724', '7070519', 'Lộc Hiệp', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7725', '7090717', 'Lộc Ninh', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('7726', '7090719', 'Truông Mít', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('7727', '7091107', 'Ninh Sơn', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('7728', '7091507', 'Cẩm Giang', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('7729', '7110107', 'Phú Hòa', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('7730', '7110521', 'Tân Bình', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7731', '7110525', 'Tân Lập', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7732', '7110547', 'Thạnh Phước', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7733', '7110715', 'Hưng Định', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('7734', '7130101', 'Thanh Bình', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7735', '7130115', 'Tân Vạn', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7736', '7130317', 'Thanh Sơn', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7737', '7130323', 'Phú Bình', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7738', '7130525', 'Phú Túc', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('7739', '7130901', 'Thị trấn Trảng Bom', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7740', '7130909', 'Gia Kiệm', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7741', '7131303', 'Xuân Bắc', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('7742', '5011117', 'Hoà Liên', '', '336', '0');
INSERT INTO `dm_xa` VALUES ('7743', '5030107', 'An Xuân', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7744', '5030119', 'Tam Phước', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7745', '5030135', 'Tam Ngọc', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7746', '5030519', 'Sông Kôn', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7747', '5030721', 'Đại Tân', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7748', '5031107', 'Duy Tân', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7749', '5031115', 'Duy Sơn', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7750', '5031123', 'Duy Vinh', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7751', '5031309', 'Chàvàl', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('7752', '5031315', 'Đacpree', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('7753', '5031539', 'Bình Trung', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7754', '5031705', 'Quế Lâm', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7755', '5031915', 'Quế Bình', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7756', '5032103', 'Tiên Sơn', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('7757', '5032305', 'Phước Đức', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('7758', '5032705', 'Trà Nú', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7759', '5032707', 'Trà Đông', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7760', '5032721', 'Trà Dơn', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7761', '5050517', 'Bình Trị', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7762', '5050543', 'Bình Mỹ', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7763', '5050913', 'Tịnh Hiệp', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7764', '5050931', 'Tịnh Giang', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7765', '5050939', 'Tịnh Long', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7766', '5051321', 'Sơn Hải', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('7767', '5052105', 'Đức Lợi', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7768', '5052115', 'Đức Thạnh', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7769', '5052317', 'Phổ Minh', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7770', '5052503', 'Ba Động', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7771', '5052533', 'Ba Nam', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7772', '5070123', 'Hải Cảng', '', '365', '0');
INSERT INTO `dm_xa` VALUES ('7773', '5070317', 'An Nghĩa', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('7774', '5070503', 'Thị trấn Tam Quan', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7775', '5071523', 'Vĩnh An', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('7776', '5071715', 'Nhơn An', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7777', '5072107', 'Canh Hiển', '', '375', '0');
INSERT INTO `dm_xa` VALUES ('7778', '5090115', 'Hòa Định Tây', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7779', '5090301', 'Thị trấn La Hai', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7780', '5090701', 'Thị trấn Chí Thạnh', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7781', '5090711', 'An Định', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7782', '5090717', 'An Lĩnh', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7783', '5090901', 'Thị trấn Củng Sơn', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7784', '5090913', 'Sơn Hội', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7785', '5090925', 'Eachà Rang', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7786', '5091303', 'Ea Bá', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('7787', '5110111', 'Phương Sơn', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7788', '5110131', 'Vĩnh Nguyên', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('7789', '5110307', 'Vạn Phước', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7790', '5110321', 'Vạn Lương', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('7791', '5110703', 'Diên Lâm', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7792', '6010303', 'Đắk Plô', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('7793', '6010703', 'Đắk Na', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7794', '6010725', 'Tân Cảnh', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7795', '6030111', 'Thống Nhất', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('7796', '6030517', 'Nam Yang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7797', '6030537', 'Ia Băng', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7798', '6030715', 'Chư Đăng Ya', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('7799', '6031307', 'Kông Yang', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('7800', '6031313', 'Đăk Song', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('7801', '6031503', 'Ia Dơk', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('7802', '6031723', 'Ia Pia', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7803', '6031919', 'H Bông', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('7804', '6032311', 'Ia Mláh', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('7805', '6050303', 'Ea H\'leo', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('7806', '6050315', 'Ea Khal', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('7807', '6050701', 'ĐLiê Ya', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('7808', '6051519', 'Ea Păn', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('7809', '6051709', 'Ea H\'MLay', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('7810', '6051931', 'Ea Yiêng', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('7811', '6052103', 'Eapô', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('7812', '6052115', 'Tâm Thắng', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('7813', '6052321', 'Bình Hòa', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7814', '6053111', 'Buôn Tría', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('7815', '6053317', 'Đắk Sin', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7816', '6053513', 'Quảng Thành', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('7817', '6053519', 'Đắk Plao', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('7818', '6070309', 'B\'lao', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7819', '6070913', 'Phú Hội', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7820', '6071311', 'Lộc Quảng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7821', '6071529', 'Hòa Bắc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7822', '6071913', 'Hương Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7823', '6072101', 'Thị trấn Đồng Nai', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7824', '7010725', '15', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7825', '7010907', '04', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7826', '7010911', '06', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('7827', '7011119', '10', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('7828', '7011301', 'Phú Mỹ', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('7829', '7011303', 'Phú Thuận', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('7830', '7011719', 'Long Thạnh Mỹ', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('7831', '7012125', '13', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('7832', '7012311', 'Thạnh Lộc', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('7833', '7012737', '19', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7834', '7012907', '05', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7835', '7012917', '13', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7836', '7012925', '19', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('7837', '7013125', '14', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7838', '7013319', 'Bình Thọ', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('7839', '7013535', 'Phạm Văn Cội', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7840', '7050117', 'Đô Vinh', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('7841', '7050311', 'Nhơn Sơn', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7842', '7050329', 'Phước Thành', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('7843', '7050513', 'Phương Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7844', '7050523', 'Lợi Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('7845', '7070117', 'Tân Lập', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('7846', '7070503', 'Hưng Phước', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7847', '7070515', 'Tân Tiến', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7848', '7070529', 'Lộc Hưng', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7849', '7070721', 'Đăng Hà', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('7850', '7090517', 'Thạnh Đông', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7851', '7090901', 'Hảo Đước', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('7852', '7090909', 'Hòa Thạnh', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('7853', '7090913', 'Hòa Hội', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('7854', '7091101', 'Thị trấn Hòa Thành', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('7855', '7091701', 'Thị trấn Trảng Bàng', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('7856', '7110109', 'Phú Thọ', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('7857', '7110345', 'An Tây', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7858', '7130111', 'Bửu Long', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7859', '7130123', 'Trảng Dài', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7860', '7130303', 'Dak Lua', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('7861', '7130527', 'Suối Nho', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('7862', '5030127', 'Tam Thanh', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7863', '5030137', 'Tam Phú', '', '338', '0');
INSERT INTO `dm_xa` VALUES ('7864', '5030301', 'Minh An', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('7865', '5030319', 'Tân Hiệp', '', '339', '0');
INSERT INTO `dm_xa` VALUES ('7866', '5030511', 'A Tiêng', '', '340', '0');
INSERT INTO `dm_xa` VALUES ('7867', '5030719', 'Đại Chánh', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7868', '5030725', 'Đại Minh', '', '341', '0');
INSERT INTO `dm_xa` VALUES ('7869', '5030905', 'Điện Hòa', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7870', '5031305', 'Zuoih', '', '344', '0');
INSERT INTO `dm_xa` VALUES ('7871', '5031525', 'Bình Phú', '', '345', '0');
INSERT INTO `dm_xa` VALUES ('7872', '5031721', 'Quế Phú', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7873', '5031727', 'Quế Châu', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7874', '5031901', 'Thị trấn Tân An', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7875', '5032317', 'Phước Thành', '', '349', '0');
INSERT INTO `dm_xa` VALUES ('7876', '5032739', 'Trà Vân', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7877', '5050111', 'Chánh Lộ', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('7878', '5050117', 'Nghĩa Chánh', '', '352', '0');
INSERT INTO `dm_xa` VALUES ('7879', '5050523', 'Bình Dương', '', '354', '0');
INSERT INTO `dm_xa` VALUES ('7880', '5050933', 'Tịnh Hà', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7881', '5051301', 'Thị trấn Di Lăng', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('7882', '5051317', 'Sơn Linh', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('7883', '5051513', 'Nghĩa Thọ', '', '359', '0');
INSERT INTO `dm_xa` VALUES ('7884', '5051707', 'Hành Minh', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7885', '5052109', 'Đức Chánh', '', '362', '0');
INSERT INTO `dm_xa` VALUES ('7886', '5052305', 'Phổ Thuận', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('7887', '5052505', 'Ba Dinh', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('7888', '5070301', 'An Hưng', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('7889', '5070311', 'An Tân', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('7890', '5070515', 'Tam Quan Nam', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7891', '5070521', 'Hoài Thanh Tây', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('7892', '5070723', 'Ân Tường', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('7893', '5071305', 'Cát Minh', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7894', '5071335', 'Cát Chánh', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('7895', '5071505', 'Tây Thuận', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('7896', '5071709', 'Nhơn Hạnh', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('7897', '5090103', '2', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7898', '5090105', '3', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7899', '5090121', 'Hòa An', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7900', '5090131', 'Bình Ngọc', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('7901', '5090315', 'Xuân Sơn Bắc', '', '377', '0');
INSERT INTO `dm_xa` VALUES ('7902', '5090719', 'An Thọ', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('7903', '5090921', 'Sơn Nguyên', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('7904', '5091111', 'Hòa Mỹ Đông', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7905', '5091121', 'Hòa Bình 1', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7906', '5091137', 'Hòa Xuân Tây', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('7907', '5110503', 'Ninh An', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7908', '5110535', 'Ninh Phú', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('7909', '5110721', 'Diên Thạnh', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7910', '5110723', 'Diên Toàn', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('7911', '5110909', 'Sơn Tân', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('7912', '6010127', 'Hòa Bình', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('7913', '6010701', 'Thị trấn Đắk Tô', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7914', '6010705', 'Măng Xăng', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7915', '6010707', 'Ngọk Lây', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('7916', '6011107', 'Đak Ui', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('7917', '6030307', 'Kon Pne', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('7918', '6030531', 'Trang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('7919', '6030917', 'Ia Chia', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('7920', '6031123', 'Ya Hội', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('7921', '6031709', 'Ia Băng', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('7922', '6031909', 'A Lbá', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('7923', '6032107', 'Ia Sol', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7924', '6032125', 'Ia Yeng', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('7925', '6032321', 'Chư Ngọc', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('7926', '6050111', 'Thắng Lợi', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('7927', '6050907', 'Pơng DRang', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('7928', '6051307', 'Ea Kiết', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7929', '6051319', 'Ea M\'DRóh', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('7930', '6052313', 'Ea Na', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('7931', '6052523', 'Cư Drăm', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('7932', '6052901', 'Đắk Sôr', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('7933', '6053301', 'Quảng Trực', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7934', '6053315', 'Đạo Nghĩa', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('7935', '6053503', 'Đắk Rung', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('7936', '6071713', 'Ma Đa Guôi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('7937', '7010319', 'Cát Lái', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('7938', '7010703', '02', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('7939', '7011319', 'Tân Hưng', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('7940', '7011901', '01', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('7941', '7012307', 'Trung Mỹ Tây', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('7942', '7012507', '05', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('7943', '7012707', '04', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('7944', '7013103', '02', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7945', '7013113', '08', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('7946', '7013529', 'Phú Mỹ Hưng', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('7947', '7013919', 'Tân Tạo', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7948', '7013927', 'Phạm Văn Hai', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('7949', '7014305', 'Lý Nhơn', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('7950', '7050111', 'Thanh Sơn', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('7951', '7070105', 'Đồng Tâm', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('7952', '7070313', 'Bình Thắng', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('7953', '7070525', 'Lộc Thành', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('7954', '7070711', 'Đoàn Kết', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('7955', '7070921', 'Thanh Bình', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7956', '7070937', 'Minh Long', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('7957', '7090303', 'Tân Lập', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('7958', '7090503', 'Tân Hà', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('7959', '7090713', 'Cầu Khởi', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('7960', '7090919', 'Ninh Điền', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('7961', '7091719', 'Phước Chỉ', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('7962', '7110111', 'Phú Mỹ', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('7963', '7110325', 'An Lập', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('7964', '7110505', 'Thị trấn Tân Phước Khánh', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7965', '7110537', 'Khánh Bình', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('7966', '7110721', 'Bình Hòa', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('7967', '7130143', 'Tân Biên', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('7968', '7130507', 'Phú Vinh', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('7969', '7130915', 'Lộ 25', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7970', '7130917', 'Cây Gáo', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7971', '7130923', 'Đồi 61', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7972', '7130945', 'Giang Điền', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7973', '7130949', 'Hố Nai 3', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('7974', '7131105', 'Bình Lộc', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('7975', '7131107', 'Xuân Thiện', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('7976', '7131109', 'Bảo Quang', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('7977', '7131507', 'Long Hưng', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('7978', '7131517', 'Lộc An', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('7979', '7131519', 'Long Đức', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('7980', '7150109', 'Thanh Hải', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('7981', '7150115', 'Đức Nghĩa', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('7982', '5030927', 'Điện Phong', '', '342', '0');
INSERT INTO `dm_xa` VALUES ('7983', '5031113', 'Duy Trinh', '', '343', '0');
INSERT INTO `dm_xa` VALUES ('7984', '5031711', 'Quế Lộc', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7985', '5031729', 'Quế Thuận', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7986', '5031733', 'Quế Cường', '', '346', '0');
INSERT INTO `dm_xa` VALUES ('7987', '5031907', 'Quế Thọ', '', '347', '0');
INSERT INTO `dm_xa` VALUES ('7988', '5032101', 'Thị trấn Tiên Kỳ', '', '348', '0');
INSERT INTO `dm_xa` VALUES ('7989', '5032703', 'Trà Kót', '', '351', '0');
INSERT INTO `dm_xa` VALUES ('7990', '5050303', 'Lý Hải', '', '353', '0');
INSERT INTO `dm_xa` VALUES ('7991', '5050705', 'Trà Thủy', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('7992', '5050707', 'Trà Hiệp', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('7993', '5050709', 'Trà Phú', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('7994', '5050731', 'Trà Bình', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('7995', '5050733', 'Trà Bùi', '', '355', '0');
INSERT INTO `dm_xa` VALUES ('7996', '5050941', 'Tịnh An', '', '356', '0');
INSERT INTO `dm_xa` VALUES ('7997', '5051327', 'Sơn Ba', '', '358', '0');
INSERT INTO `dm_xa` VALUES ('7998', '5051701', 'Thị trấn Chợ Chùa', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('7999', '5051717', 'Hành Tín Tây', '', '360', '0');
INSERT INTO `dm_xa` VALUES ('8000', '5052303', 'Phổ Hòa', '', '363', '0');
INSERT INTO `dm_xa` VALUES ('8001', '5052501', 'Thị trấn Ba Tơ', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('8002', '5052507', 'Ba Điền', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('8003', '5070305', 'An Dũng', '', '366', '0');
INSERT INTO `dm_xa` VALUES ('8004', '5070529', 'Hoài Xuân', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('8005', '5070707', 'Ân Sơn', '', '368', '0');
INSERT INTO `dm_xa` VALUES ('8006', '5070905', 'Mỹ Châu', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('8007', '5070909', 'Mỹ Lộc', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('8008', '5071517', 'Bình Tường', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('8009', '5090119', 'Hòa Thắng', '', '376', '0');
INSERT INTO `dm_xa` VALUES ('8010', '5090705', 'An Dân', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('8011', '5090733', 'An Phú', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('8012', '5091101', 'Thị trấn Phú Lâm', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8013', '5091105', 'Hòa Phú', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8014', '5091113', 'Hòa Thịnh', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8015', '5091129', 'Hòa Hiệp Trung', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8016', '5110125', 'Lộc Thọ', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8017', '5110129', 'Tân Lập', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8018', '5110505', 'Ninh Tây', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8019', '5110525', 'Ninh Thủy', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8020', '5110701', 'Thị trấn Diên Khánh', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8021', '5110715', 'Diên Thọ', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8022', '5111115', 'Giang Ly', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('8023', '5111309', 'Sơn Hiệp', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('8024', '6011111', 'Hà Mòn', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('8025', '6011301', 'Thị trấn Sa Thầy', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('8026', '6030127', 'Gào', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('8027', '6030317', 'Nghĩa An', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('8028', '6030323', 'Kông Bơ La', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('8029', '6030511', 'Hà Bầu', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8030', '6030723', 'Nghĩa Hưng', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8031', '6031117', 'Yang Bắc', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('8032', '6031703', 'Bình Giáo', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('8033', '6031901', 'Thị trấn Chư Sê', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8034', '6031911', 'AYun', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8035', '6032303', 'Ia RSai', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('8036', '6032307', 'Chư Gu', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('8037', '6050129', 'Cư ÊBur', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8038', '6050311', 'Cư Mốt', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('8039', '6050713', 'Ea Hồ', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('8040', '6051101', 'Krông Na', '', '415', '0');
INSERT INTO `dm_xa` VALUES ('8041', '6051323', 'Ea D\'Rơng', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('8042', '6051329', 'Cuor Đăng', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('8043', '6051505', 'Ea Sô', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('8044', '6051707', 'Ea Lai', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8045', '6051913', 'Ea Yông', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8046', '6052301', 'Thị trấn Buôn Trấp', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('8047', '6052903', 'Nam Đà', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('8048', '6070107', '4', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8049', '6070301', '1', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8050', '6070715', 'Ka Đơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8051', '6071507', 'Tân Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8052', '6071517', 'Liên Đầm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8053', '6071519', 'Gung Ré', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8054', '6071701', 'Thị trấn Ma Đa Guôi', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8055', '6071903', 'An Nhơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8056', '7010119', 'Cầu Kho', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('8057', '7010515', '08', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('8058', '7010701', '01', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8059', '7010715', '09', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8060', '7010917', '09', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('8061', '7010921', '11', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('8062', '7010929', '15', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('8063', '7011103', '02', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8064', '7011125', '13', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8065', '7011501', '01', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8066', '7011517', '09', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8067', '7011531', '16', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8068', '7011903', '02', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('8069', '7011917', '09', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('8070', '7012127', '14', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8071', '7012911', '07', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8072', '7012927', '21', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8073', '7013119', '11', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('8074', '7013521', 'Thái Mỹ', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8075', '7013715', 'Tân Xuân', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8076', '7014301', 'Cần Thạnh', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('8077', '7014307', 'Thạnh An', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('8078', '7014311', 'Bình Khánh', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('8079', '7050105', 'Đạo Long', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8080', '7050327', 'Ma Nới', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8081', '7050505', 'Phước Chiến', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('8082', '7070111', 'Tân Hưng', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('8083', '7070321', 'Long Hưng', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8084', '7070513', 'Tân Thành', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8085', '7090301', 'Thị trấn Tân Biên', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8086', '7090521', 'Tân Phú', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('8087', '7091123', 'Trường Tây', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8088', '7091501', 'Thị trấn Gò Dầu', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('8089', '7091707', 'Gia Lộc', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8090', '7110115', 'Tân An', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('8091', '7110311', 'Định Hiệp', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8092', '7110315', 'Long Hòa', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8093', '7110335', 'Hưng Hòa', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8094', '7110507', 'An Linh', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8095', '7110711', 'An Phú', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8096', '7110723', 'Tân Đông Hiệp', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8097', '7130119', 'Thống Nhất', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8098', '7130127', 'Tân Hiệp', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8099', '7130139', 'Long Bình', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8100', '7130305', 'Nam Cát Tiên', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8101', '7130313', 'Phú Lập', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8102', '7130333', 'Trà Cổ', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8103', '7131111', 'Suối Tre', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8104', '5052521', 'Ba Tiêu', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('8105', '5052523', 'Ba Xa', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('8106', '5052531', 'Ba Cung', '', '364', '0');
INSERT INTO `dm_xa` VALUES ('8107', '5070519', 'Hoài Thanh', '', '367', '0');
INSERT INTO `dm_xa` VALUES ('8108', '5070933', 'Mỹ Cát', '', '369', '0');
INSERT INTO `dm_xa` VALUES ('8109', '5071311', 'Cát Lâm', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('8110', '5071333', 'Cát Thắng', '', '371', '0');
INSERT INTO `dm_xa` VALUES ('8111', '5071509', 'Tây Giang', '', '372', '0');
INSERT INTO `dm_xa` VALUES ('8112', '5071703', 'Thị trấn Đập Đá', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('8113', '5071707', 'Nhơn Mỹ', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('8114', '5071725', 'Nhơn Hòa', '', '373', '0');
INSERT INTO `dm_xa` VALUES ('8115', '5071909', 'Phước Hòa', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('8116', '5071927', 'Phước Mỹ', '', '374', '0');
INSERT INTO `dm_xa` VALUES ('8117', '5072105', 'Canh Vinh', '', '375', '0');
INSERT INTO `dm_xa` VALUES ('8118', '5090519', 'Xuân Thọ 2', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('8119', '5090713', 'An Nghiệp', '', '379', '0');
INSERT INTO `dm_xa` VALUES ('8120', '5091125', 'Hòa Thành', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8121', '5091309', 'EaBia', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('8122', '5091313', 'Sông Hinh', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('8123', '5110115', 'Vạn Thạnh', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8124', '5110519', 'Ninh Thân', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8125', '5110547', 'Ninh Lộc', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8126', '5110943', 'Cam Bình', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8127', '5111107', 'Khánh Trung', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('8128', '5111111', 'Khánh Thượng', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('8129', '6010509', 'Đắk Xú', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('8130', '6010719', 'Văn Lem', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('8131', '6010721', 'Kon Đào', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('8132', '6010903', 'Đak Ring', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('8133', '6010919', 'Tân Lập', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('8134', '6011101', 'Thị trấn Đak Hà', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('8135', '6011307', 'Sa Nhơn', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('8136', '6030305', 'Sơn Lang', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('8137', '6030321', 'Kông Lơng Khơng', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('8138', '6030509', 'Hải Yang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8139', '6030515', 'HRa', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8140', '6030539', 'Kon Thụp', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8141', '6030721', 'Chư Jôr', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8142', '6030907', 'Ia KRai', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('8143', '6031315', 'Yang Trung', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('8144', '6031517', 'Ia Pnôn', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('8145', '6031917', 'Dun', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8146', '6031921', 'Ia Hrú', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8147', '6032117', 'Ia MRơn', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('8148', '6050703', 'Ea Tóh', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('8149', '6050707', 'Phú Lộc', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('8150', '6050711', 'Krông Năng', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('8151', '6051509', 'Cư Huê', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('8152', '6051721', 'KRông á', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8153', '6051921', 'Ea Hiu', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8154', '6052711', 'Đức Minh', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('8155', '6053105', 'Bông Krang', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('8156', '6053501', 'Thị trấn Gia Nghĩa', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('8157', '6053515', 'Đắk Nia', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('8158', '6070117', '9', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8159', '6070305', 'Lộc Phát', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8160', '6070507', 'Đạ Long', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8161', '6070909', 'N\'Thol Hạ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8162', '6071109', 'Phú Sơn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8163', '6071129', 'Gia Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8164', '6071323', 'Lộc Nam', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8165', '6071509', 'Đinh Lạc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8166', '6071917', 'Hà Đông', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8167', '6072111', 'Mỹ Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8168', '7010705', '03', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8169', '7010729', '18', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8170', '7011117', '09', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8171', '7011311', 'Tân Thuận Tây', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('8172', '7011317', 'Tân Phong', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('8173', '7011909', '05', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('8174', '7011929', '15', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('8175', '7012109', '05', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8176', '7012301', 'Tân Thới Nhất', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('8177', '7012309', 'Tân Chánh Hiệp', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('8178', '7012513', '11', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8179', '7012515', '12', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8180', '7012523', '17', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8181', '7012729', '15', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8182', '7012909', '06', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8183', '7012919', '14', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8184', '7012921', '15', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8185', '7013105', '03', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('8186', '7013513', 'Hòa Phú', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8187', '7014111', 'Long Thới', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('8188', '7014313', 'An Thới Đông', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('8189', '7050103', 'Kinh Dinh', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8190', '7050715', 'Phước Dinh', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8191', '7070109', 'Tân Phước', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('8192', '7070305', 'Đak ơ', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8193', '7070327', 'Phú Riềng', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8194', '7070715', 'Đức Liễu', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('8195', '7070929', 'Minh Lập', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8196', '7090523', 'Tân Hưng', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('8197', '7091513', 'Phước Đông', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('8198', '7110317', 'Cây Trường II', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8199', '7110319', 'Trừ Văn Thố', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8200', '7110527', 'Tân Thành', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8201', '7110729', 'Vĩnh Phú', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8202', '7130131', 'Tam Hòa', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8203', '7130145', 'Tân Hòa', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8204', '7130301', 'Thị trấn Tân Phú', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8205', '7130503', 'Thanh Sơn', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('8206', '7130705', 'Trị An', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('8207', '7130713', 'Thạnh Phú', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('8208', '7131115', 'Xuân Lập', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8209', '7131331', 'Xuân Đông', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8210', '7150117', 'Lạc Đạo', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('8211', '7150507', 'Phan Hiệp', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8212', '7150521', 'Lương Sơn', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8213', '7150725', 'Hàm Thắng', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8214', '7151101', 'Lạc Tánh', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8215', '7151111', 'Đức Thuận', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8216', '7151127', 'Gia Huynh', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8217', '7151517', 'Đức Tài', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('8218', '7151703', 'Long Hải', '', '501', '0');
INSERT INTO `dm_xa` VALUES ('8219', '7151705', 'Tam Thanh', '', '501', '0');
INSERT INTO `dm_xa` VALUES ('8220', '7170311', 'Long Phước', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('8221', '7170521', 'Đá Bạc', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8222', '7170901', 'Thị trấn Phú Mỹ', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('8223', '7170911', 'Hắc Dịch', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('8224', '7171111', 'Phước Long Thọ', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('8225', '5090513', 'Xuân Thịnh', '', '378', '0');
INSERT INTO `dm_xa` VALUES ('8226', '5090919', 'Sơn Long', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('8227', '5091141', 'Hòa Tâm', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8228', '5110127', 'Phước Hòa', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8229', '5110315', 'Vạn Phú', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('8230', '5110517', 'Ninh Trung', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8231', '5110527', 'Ninh Phụng', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8232', '5110537', 'Ninh Quang', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8233', '5110541', 'Ninh Phước', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8234', '5110545', 'Ninh Hưng', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8235', '5110741', 'Suối Tân', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8236', '5110921', 'Cam Phước Tây', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8237', '5110925', 'Cam An Nam', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8238', '5110927', 'Cam Thành Nam', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8239', '5111125', 'Liên Sang', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('8240', '5111311', 'Sơn Trung', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('8241', '6010113', 'Ngọk Bay', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('8242', '6010713', 'Tu Mơ Rông', '', '394', '0');
INSERT INTO `dm_xa` VALUES ('8243', '6011103', 'Đak PXi', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('8244', '6011311', 'Sa Nghĩa', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('8245', '6030117', 'Tân Sơn', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('8246', '6030503', 'Hà Đông', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8247', '6030507', 'Ayun', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8248', '6030703', 'Hà Tây', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8249', '6031111', 'Song An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('8250', '6031701', 'Thị trấn Chư Prông', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('8251', '6031717', 'Ia Púch', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('8252', '6031727', 'Ia Mơ', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('8253', '6032105', 'Chư A Thai', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('8254', '6032127', 'Ia Rtô', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('8255', '6032301', 'Thị trấn Phú Túc', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('8256', '6050305', 'Ea Sol', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('8257', '6050313', 'Ea Hiao', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('8258', '6051713', 'Ea M\' Doal', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8259', '6051903', 'KRông Búk', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8260', '6052323', 'Quảng Điền', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('8261', '6070509', 'Đạ Tông', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8262', '6070511', 'Đam Rong', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8263', '6070705', 'Lạc Xuân', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8264', '6070713', 'Pró', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8265', '6070903', 'Hiệp Thạnh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8266', '6071117', 'Tân Văn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8267', '6071521', 'Bảo Thuận', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8268', '6071531', 'Sơn Điền', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8269', '6071705', 'Đạ M\'ri', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8270', '6072119', 'Phù Mỹ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8271', '7010105', 'Bến Nghé', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('8272', '7010113', 'Cầu Ông Lãnh', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('8273', '7010115', 'Cô Giang', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('8274', '7010501', '01', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('8275', '7010509', '05', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('8276', '7010525', '13', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('8277', '7010527', '14', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('8278', '7010905', '03', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('8279', '7010909', '05', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('8280', '7011505', '03', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8281', '7011509', '05', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8282', '7011519', '10', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8283', '7012101', '01', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8284', '7012103', '02', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8285', '7012123', '12', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8286', '7012303', 'Đông Hưng Thuận', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('8287', '7012501', '01', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8288', '7012701', '01', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8289', '7012713', '07', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8290', '7012915', '12', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8291', '7012933', '25', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8292', '7012935', '26', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8293', '7012939', '28', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8294', '7013307', 'Tam Phú', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('8295', '7013531', 'An Phú', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8296', '7013533', 'Nhuận Đức', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8297', '7013705', 'Tân Hiệp', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8298', '7014101', 'Thị trấn Nhà Bè', '', '448', '0');
INSERT INTO `dm_xa` VALUES ('8299', '7050121', 'Văn Hải', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8300', '7070521', 'Lộc Quang', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8301', '7070909', 'Thanh Lương', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8302', '7070927', 'Tân Khai', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8303', '7070935', 'Minh Thành', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8304', '7090103', '3', '', '471', '0');
INSERT INTO `dm_xa` VALUES ('8305', '7090501', 'Thị trấn Tân Châu', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('8306', '7090709', 'Bàu Năng', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('8307', '7090903', 'Phước Vinh', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('8308', '7091117', 'Trường Hòa', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8309', '7091313', 'Long Thuận', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('8310', '7091315', 'An Thạnh', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('8311', '7091715', 'An Tịnh', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8312', '7110503', 'Thị trấn Phước Vĩnh', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8313', '7110515', 'Vĩnh Hoà', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8314', '7110705', 'Thị trấn An Thạnh', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8315', '7130109', 'Quyết Thắng', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8316', '7130521', 'Túc Trưng', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('8317', '7130911', 'Quang Trung', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8318', '7130939', 'Tây Hoà', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8319', '7131327', 'Xuân Hòa', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8320', '7131525', 'Long An', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8321', '7150525', 'Hòa Thắng', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8322', '7150911', 'Hàm Thạnh', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8323', '7151109', 'Đức Bình', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8324', '7151303', 'Tân An', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('8325', '7170507', 'Xuân Sơn', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8326', '7170711', 'Bàu Lâm', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('8327', '7170721', 'Bưng Riềng', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('8328', '8010113', 'Lợi Bình Nhơn', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('8329', '8010317', 'Thạnh Hưng', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('8330', '8010705', 'Bình Hiệp', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8331', '8010711', 'Tuyên Thạnh', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8332', '8010715', 'Bình Phong Thạnh', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8333', '8011537', 'Mỹ Hạnh Nam', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8334', '8011721', 'Thanh Phú', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('8335', '8030121', 'Tân Thuận Đông', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('8336', '8030313', 'Tân Quy Đông', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('8337', '8030509', 'Tân Thành A', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('8338', '8030511', 'Tân Thành B', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('8339', '8030915', 'Tân Công Sính', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('8340', '8031307', 'Mỹ Hòa', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8341', '8031323', 'Láng Biển', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8342', '8031513', 'Mỹ Thọ', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8343', '8031525', 'Mỹ Long', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8344', '8031531', 'Phương Thịnh', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8345', '5090903', 'Phước Tân', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('8346', '5090909', 'Suối Trai', '', '380', '0');
INSERT INTO `dm_xa` VALUES ('8347', '5091119', 'Hòa Bình 2', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8348', '5091133', 'Hòa Vinh', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8349', '5091307', 'EaBar', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('8350', '5091317', 'Đức Bình Đông', '', '382', '0');
INSERT INTO `dm_xa` VALUES ('8351', '5110101', 'Vĩnh Hải', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8352', '5110121', 'Phước Tiến', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8353', '5110303', 'Đại Lãnh', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('8354', '5110313', 'Vạn Khánh', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('8355', '5110509', 'Ninh Thọ', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8356', '5110521', 'Ninh Đông', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8357', '5110523', 'Ninh Diêm', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8358', '5110549', 'Ninh Vân', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8359', '5110711', 'Diên Đồng', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8360', '5110737', 'Suối Tiên', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8361', '6010319', 'Đắk KRoong', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('8362', '6010505', 'Đắk Dục', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('8363', '6010511', 'Pờ Y', '', '393', '0');
INSERT INTO `dm_xa` VALUES ('8364', '6011109', 'Ngok Wang', '', '396', '0');
INSERT INTO `dm_xa` VALUES ('8365', '6030119', 'Trà Đa', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('8366', '6030123', 'An Phú', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('8367', '6030543', 'Kon Chiêng', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8368', '6030705', 'Ia Khươl', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8369', '6030713', 'Hòa Phú', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8370', '6030717', 'Ia Ka', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8371', '6030901', 'Thị trấn Ia Kha', '', '402', '0');
INSERT INTO `dm_xa` VALUES ('8372', '6031103', 'Tú An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('8373', '6031303', 'Chư Krêy', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('8374', '6031305', 'An Trung', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('8375', '6031317', 'Ya Ma', '', '404', '0');
INSERT INTO `dm_xa` VALUES ('8376', '6031505', 'Ia Krêl', '', '405', '0');
INSERT INTO `dm_xa` VALUES ('8377', '6031725', 'Ia Lâu', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('8378', '6032109', 'Chư Răng', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('8379', '6032123', 'Ia Rbol', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('8380', '6032313', 'Chư Drăng', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('8381', '6050119', 'Tân Tiến', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8382', '6050127', 'Hòa Thuận', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8383', '6050131', 'Ea Tu', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8384', '6050317', 'Dlê Yang', '', '411', '0');
INSERT INTO `dm_xa` VALUES ('8385', '6050715', 'Phú Xuân', '', '413', '0');
INSERT INTO `dm_xa` VALUES ('8386', '6051103', 'Ea Huar', '', '415', '0');
INSERT INTO `dm_xa` VALUES ('8387', '6051717', 'Cư M\'ta', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8388', '6051905', 'Ea Kly', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8389', '6052107', 'Hòa Xuân', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('8390', '6052111', 'Hòa Khánh', '', '420', '0');
INSERT INTO `dm_xa` VALUES ('8391', '6052311', 'Ea Hu', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('8392', '6052507', 'Hòa Thành', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8393', '6052509', 'Hòa Tân', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8394', '6052517', 'Khuê Ngọc Điền', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8395', '6053109', 'Buôn Triết', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('8396', '6053511', 'Đắk R\'Măng', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('8397', '6071105', 'Đạ Đờn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8398', '6071113', 'Liêng S\'Roin', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8399', '6071515', 'Đinh Trang Hòa', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8400', '6071533', 'Gia Bắc', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8401', '6071905', 'Mỹ Đức', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8402', '7010303', 'Thảo Điền', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('8403', '7010503', '02', '', '430', '0');
INSERT INTO `dm_xa` VALUES ('8404', '7010711', '06', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8405', '7010923', '12', '', '432', '0');
INSERT INTO `dm_xa` VALUES ('8406', '7011115', '08', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8407', '7011705', 'Tăng Nhơn Phú A', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('8408', '7012119', '10', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8409', '7012305', 'An Phú Đông', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('8410', '7012511', '10', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8411', '7012705', '03', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8412', '7012709', '05', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8413', '7013303', 'Hiệp Bình Chánh', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('8414', '7013305', 'Hiệp Bình Phước', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('8415', '7013701', 'Thị trấn Hóc Môn', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8416', '7013909', 'Quy Đức', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8417', '7013911', 'Hưng Long', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8418', '7013913', 'Tân Quý Tây', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8419', '7050717', 'Phước Diêm', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8420', '7050725', 'Nhị Hà', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8421', '7070115', 'Tân Hòa', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('8422', '7070303', 'Thị trấn Phước Bình', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8423', '7070323', 'Long Hà', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8424', '7070325', 'Bù Nho', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8425', '7070507', 'Thanh Hòa', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8426', '7070703', 'Đak Nhau', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('8427', '7070707', 'Thọ Sơn', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('8428', '7070713', 'Đồng Nai', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('8429', '7070919', 'Minh Đức', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8430', '7090305', 'Tân Bình', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8431', '7090307', 'Thạnh Tây', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8432', '7090519', 'Tân Thành', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('8433', '7091105', 'Tân Bình', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8434', '7091705', 'Lộc Hưng', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8435', '7110313', 'An Long', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8436', '7110323', 'Lai Uyên', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8437', '7110347', 'Thới Hòa', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8438', '7110353', 'Tân Định', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8439', '7110531', 'Lạc An', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8440', '7130107', 'Quang Vinh', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8441', '7130117', 'Tân Phong', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8442', '7130511', 'La Ngà', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('8443', '7131103', 'Bảo Vinh', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8444', '7131319', 'Suối Cát', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8445', '7131335', 'Bảo Bình', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8446', '7131709', 'Hiệp Phước', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('8447', '7131719', 'Phước An', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('8448', '7150301', 'Thị trấn Liên Hương', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('8449', '7150315', 'Bình Thạnh', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('8450', '7150511', 'Hải Ninh', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8451', '7150517', 'Hồng Thái', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8452', '7150711', 'Hồng Sơn', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8453', '7150905', 'Hàm Cần', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8454', '7150907', 'Mương Mán', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8455', '7151113', 'Suối Kiết', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8456', '7151125', 'Gia An', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8457', '7151307', 'Tân Hải', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('8458', '7170107', '4', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('8459', '7170313', 'Hoà Long', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('8460', '7170715', 'Hòa Hưng', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('8461', '7170719', 'Hòa Hội', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('8462', '7170905', 'Phước Hoà', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('8463', '8010105', '3', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('8464', '8010511', 'Tuyên Bình', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('8465', '5091139', 'Hòa Xuân Nam', '', '381', '0');
INSERT INTO `dm_xa` VALUES ('8466', '5110103', 'Vĩnh Phước', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8467', '5110133', 'Vĩnh Trường', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8468', '5110149', 'Phước Đồng', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8469', '5110719', 'Diên Lạc', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8470', '5110911', 'Cam Hiệp Bắc', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8471', '5111109', 'Khánh Đông', '', '388', '0');
INSERT INTO `dm_xa` VALUES ('8472', '6010115', 'Vinh Quang', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('8473', '6010119', 'Ia Chim', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('8474', '6010911', 'Măng Cành', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('8475', '6030533', 'Lơ Pang', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8476', '6030541', 'Đê Ar', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('8477', '6030707', 'Ia Phí', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8478', '6031115', 'Phú An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('8479', '6031907', 'Ia Glai', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8480', '6050101', 'Tân Lập', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8481', '6050113', 'Tân Lợi', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8482', '6050919', 'Bình Thuận', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('8483', '6051105', 'Ea Wer', '', '415', '0');
INSERT INTO `dm_xa` VALUES ('8484', '6051305', 'Quảng Tiến', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('8485', '6051315', 'Ea Tul', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('8486', '6051507', 'Xuân Phú', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('8487', '6051705', 'Ea Pil', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8488', '6051723', 'Ea Trang', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8489', '6051901', 'Thị trấn Phước An', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8490', '6051917', 'Ea Kuăng', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8491', '6052501', 'Thị trấn Krông Kmar', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8492', '6052715', 'Đắk Môl', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('8493', '6052907', 'Đắk Mâm', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('8494', '6052909', 'Đắk Rồ', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('8495', '6052911', 'Nam Nung', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('8496', '6053313', 'Quảng Tín', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('8497', '6070307', 'Lộc Tiến', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8498', '6070313', 'Đam Bri', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8499', '6070319', 'Lộc Châu', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8500', '6070921', 'Đà Loan', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8501', '6071115', 'Rô Men', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8502', '6071119', 'Tân Hà', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8503', '6071125', 'Tân Thanh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8504', '6072109', 'Nam Ninh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8505', '7010107', 'Bến Thành', '', '428', '0');
INSERT INTO `dm_xa` VALUES ('8506', '7010721', '13', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8507', '7011315', 'Tân Quy', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('8508', '7011521', '11', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8509', '7012505', '04', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8510', '7012517', '13', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8511', '7012715', '08', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8512', '7012913', '11', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8513', '7013127', '15', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('8514', '7013301', 'Linh Đông', '', '444', '0');
INSERT INTO `dm_xa` VALUES ('8515', '7013501', 'Thị trấn Củ Chi', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8516', '7013709', 'Đông Thạnh', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8517', '7013905', 'Phong Phú', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8518', '7013925', 'Vĩnh Lộc B', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8519', '7013939', 'An Phú Tây', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8520', '7014303', 'Long Hòa', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('8521', '7014309', 'Tam Thôn Hiệp', '', '449', '0');
INSERT INTO `dm_xa` VALUES ('8522', '7050113', 'Phước Mỹ', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8523', '7050515', 'Tri Hải', '', '463', '0');
INSERT INTO `dm_xa` VALUES ('8524', '7050721', 'Phước Nam', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8525', '7070101', 'Thị trấn Đồng Xoài', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('8526', '7070103', 'Thuận Lợi', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('8527', '7070301', 'Thị trấn Thác Mơ', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8528', '7070907', 'An Khương', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8529', '7090107', 'Bình Minh', '', '471', '0');
INSERT INTO `dm_xa` VALUES ('8530', '7090311', 'Hòa Hiệp', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8531', '7090313', 'Tân Phong', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8532', '7090317', 'Trà Vong', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8533', '7090705', 'Phước Ninh', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('8534', '7090707', 'Phước Minh', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('8535', '7090715', 'Bến Củi', '', '474', '0');
INSERT INTO `dm_xa` VALUES ('8536', '7090915', 'Thanh Điền', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('8537', '7091503', 'Thạnh Đức', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('8538', '7091717', 'An Hòa', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8539', '7110103', 'Hiệp Thành', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('8540', '7110119', 'Chánh Mỹ', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('8541', '7110305', 'Minh Hoà', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8542', '7110511', 'An Bình', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8543', '7110719', 'Bình Nhâm', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8544', '7130113', 'Bửu Hòa', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8545', '7130133', 'Bình Đa', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8546', '7130141', 'Hố Nai', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8547', '7130315', 'Phú Thịnh', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8548', '7130501', 'Thị trấn Định Quán', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('8549', '7130519', 'Phú Ngọc', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('8550', '7130701', 'Thị trấn Vĩnh An', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('8551', '7130931', 'Hưng Lộc', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8552', '7130937', 'Trung Hoà', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8553', '7131127', 'Xuân Quế', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8554', '7150127', 'Tiến Lợi', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('8555', '7150513', 'Phan Rí Thành', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8556', '7150707', 'Đông Tiến', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8557', '7150717', 'La Dạ', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8558', '7151103', 'Bắc Ruộng', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8559', '7151107', 'Đồng Kho', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8560', '7151115', 'Măng Tố', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('8561', '7151319', 'Sơn Mỹ', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('8562', '7151507', 'Tân Hà', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('8563', '7151511', 'Sùng Nhơn', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('8564', '7170115', '8', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('8565', '7170515', 'Quảng Thành', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8566', '7170705', 'Phước Tân', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('8567', '8010309', 'Hưng Điền B', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('8568', '8010505', 'Hưng Điền A', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('8569', '8010903', 'Kiến Bình', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('8570', '8011101', 'Thị trấn Thạnh Hóa', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('8571', '8011301', 'Thị trấn Đông Thành', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('8572', '8011725', 'Mỹ Yên', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('8573', '8011901', 'Thị trấn Thủ Thừa', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('8574', '8012301', 'Thị trấn Tân Trụ', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('8575', '8012313', 'Bình Lãng', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('8576', '8012507', 'Long Định', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8577', '8012509', 'Phước Vân', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8578', '8012511', 'Long Cang', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8579', '8012527', 'Tân Lân', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8580', '8012703', 'Phước Lý', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8581', '8012711', 'Phước Lâm', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8582', '8030303', '2', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('8583', '5110143', 'Vĩnh Hiệp', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('8584', '5110319', 'Vạn Thạnh', '', '384', '0');
INSERT INTO `dm_xa` VALUES ('8585', '5110515', 'Ninh Xuân', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8586', '5110531', 'Ninh Bình', '', '385', '0');
INSERT INTO `dm_xa` VALUES ('8587', '5110709', 'Diên Sơn', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8588', '5110725', 'Diên An', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8589', '5110731', 'Diên Lộc', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8590', '5110733', 'Diên Bình', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8591', '5110735', 'Suối Hiệp', '', '386', '0');
INSERT INTO `dm_xa` VALUES ('8592', '5110915', 'Cam Đức', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8593', '5110917', 'Cam Hiệp Nam', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8594', '5110919', 'Cam Thành Bắc', '', '387', '0');
INSERT INTO `dm_xa` VALUES ('8595', '5111303', 'Thành Sơn', '', '389', '0');
INSERT INTO `dm_xa` VALUES ('8596', '6010123', 'Chư Hreng', '', '391', '0');
INSERT INTO `dm_xa` VALUES ('8597', '6010307', 'Đắk Nhoong', '', '392', '0');
INSERT INTO `dm_xa` VALUES ('8598', '6010915', 'Pờ Ê', '', '395', '0');
INSERT INTO `dm_xa` VALUES ('8599', '6011315', 'Ya Xiêr', '', '397', '0');
INSERT INTO `dm_xa` VALUES ('8600', '6030113', 'Trà Bá', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('8601', '6030309', 'KRong', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('8602', '6030319', 'Tơ Tung', '', '399', '0');
INSERT INTO `dm_xa` VALUES ('8603', '6030701', 'Thị trấn Phú Hòa', '', '401', '0');
INSERT INTO `dm_xa` VALUES ('8604', '6031121', 'Thành An', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('8605', '6031715', 'Ia O', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('8606', '6031903', 'Ia Tiêm', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8607', '6031905', 'Bờ Ngoong', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8608', '6031915', 'Ia Blang', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('8609', '6032305', 'Ia RSươm', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('8610', '6032317', 'Ia HDreh', '', '409', '0');
INSERT INTO `dm_xa` VALUES ('8611', '6050109', 'Thành Nhất', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8612', '6050115', 'Thành Công', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8613', '6050133', 'Hòa Thắng', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8614', '6050501', 'Ea Rôk', '', '412', '0');
INSERT INTO `dm_xa` VALUES ('8615', '6050911', 'Ea Blang', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('8616', '6050921', 'Cư Bao', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('8617', '6051523', 'Cư Jiang', '', '417', '0');
INSERT INTO `dm_xa` VALUES ('8618', '6051715', 'Ea Riêng', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8619', '6051909', 'Ea Phê', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8620', '6052305', 'Ea Ktur', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('8621', '6052905', 'Buôn Choah', '', '424', '0');
INSERT INTO `dm_xa` VALUES ('8622', '6053103', 'Yang Tao', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('8623', '6053509', 'Đắk Ha', '', '427', '0');
INSERT INTO `dm_xa` VALUES ('8624', '6070111', '6', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8625', '6071103', 'Thị trấn Nam Ban', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8626', '6071107', 'Phi Tô', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8627', '6071321', 'Lộc Thành', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8628', '6071501', 'Thị trấn Di Linh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8629', '6071709', 'Đạ Tồn', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8630', '6071717', 'Đoàn Kết', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8631', '6071919', 'Đạ Kho', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8632', '6072113', 'Đức Phổ', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8633', '7010305', 'An Khánh', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('8634', '7010719', '12', '', '431', '0');
INSERT INTO `dm_xa` VALUES ('8635', '7011101', '01', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8636', '7011109', '05', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8637', '7011507', '04', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8638', '7011511', '06', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8639', '7011523', '12', '', '435', '0');
INSERT INTO `dm_xa` VALUES ('8640', '7011707', 'Tăng Nhơn Phú B', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('8641', '7011715', 'Tân Phú', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('8642', '7011721', 'Long Bình', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('8643', '7012113', '07', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8644', '7012129', '15', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8645', '7012131', '16', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8646', '7012313', 'Thạnh Xuân', '', '439', '0');
INSERT INTO `dm_xa` VALUES ('8647', '7012503', '03', '', '440', '0');
INSERT INTO `dm_xa` VALUES ('8648', '7012719', '10', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8649', '7013923', 'Vĩnh Lộc A', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8650', '7013929', 'Lê Minh Xuân', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8651', '7050315', 'Phước Đại', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8652', '7070501', 'Thị trấn Lộc Ninh', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8653', '7070523', 'Lộc Khánh', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8654', '7090315', 'Mỏ Công', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8655', '7110339', 'Thanh Tuyền', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8656', '7110529', 'Vĩnh Tân', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8657', '7110533', 'Hội Nghĩa', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8658', '7110543', 'Bạch Đằng', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8659', '7130513', 'Phú Lợi', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('8660', '7130905', 'Gia Tân 2', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8661', '7131123', 'Sông Nhạn', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8662', '7131131', 'Xuân Mỹ', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8663', '7131339', 'Lâm San', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8664', '7131501', 'Thị trấn Long Thành', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8665', '7131713', 'Phú Thạnh', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('8666', '7150121', 'Hàm Tiến', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('8667', '7150519', 'Phan Sơn', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8668', '7150727', 'Hàm Nhơn', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8669', '7150917', 'Hàm Minh', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8670', '7150923', 'Tân Thành', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8671', '7151317', 'Tân Thiện', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('8672', '7170111', '6', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('8673', '7170117', '9', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('8674', '7170307', 'Long Toàn', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('8675', '7170501', 'Thị trấn Ngãi Giao', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8676', '7170509', 'Bình Giã', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8677', '8010707', 'Bình Hòa Tây', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8678', '8010713', 'Tân Lập', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8679', '8010723', 'Tân Thành', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8680', '8010725', 'Bình Thạnh', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8681', '8011109', 'Tân Tây', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('8682', '8011115', 'Thuận Nghĩa Hòa', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('8683', '8011307', 'Mỹ Quý Tây', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('8684', '8011515', 'Tân Phú', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8685', '8011517', 'Hòa Khánh Tây', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8686', '8011519', 'Hòa Khánh Đông', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8687', '8011707', 'Bình Đức', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('8688', '8011913', 'Mỹ Phú', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('8689', '8012519', 'Phước Tuy', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8690', '8012523', 'Tân Chánh', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8691', '8012701', 'Thị trấn Cần Giuộc', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8692', '8030123', 'Tân Thuận Tây', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('8693', '8030729', 'An Bình A', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('8694', '8031113', 'Tân Thạnh', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('8695', '8031117', 'Tân Mỹ', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('8696', '8031125', 'Tân Long', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('8697', '8031305', 'Trường Xuân', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8698', '8031313', 'Mỹ An', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8699', '8031319', 'Mỹ Quý', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8700', '8031503', 'Phong Mỹ', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8701', '8031701', 'Thị trấn Lấp Vò', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('8702', '8031711', 'Long Hưng B', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('8703', '6050123', 'Ea Tam', '', '410', '0');
INSERT INTO `dm_xa` VALUES ('8704', '6050905', 'Cư Pơng', '', '414', '0');
INSERT INTO `dm_xa` VALUES ('8705', '6051109', 'Ea Bar', '', '415', '0');
INSERT INTO `dm_xa` VALUES ('8706', '6051321', 'Cư M\'gar', '', '416', '0');
INSERT INTO `dm_xa` VALUES ('8707', '6051703', 'Cư Prao', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8708', '6051711', 'Krông Jing', '', '418', '0');
INSERT INTO `dm_xa` VALUES ('8709', '6051907', 'Ea Kênh', '', '419', '0');
INSERT INTO `dm_xa` VALUES ('8710', '6052317', 'Ea Bông', '', '421', '0');
INSERT INTO `dm_xa` VALUES ('8711', '6052503', 'Dang Kang', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8712', '6052511', 'Hòa Phong', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8713', '6052519', 'Cư Pui', '', '422', '0');
INSERT INTO `dm_xa` VALUES ('8714', '6052701', 'Thị trấn Đắk Mil', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('8715', '6052703', 'Đắk Gằn', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('8716', '6052717', 'Thuận Hạnh', '', '423', '0');
INSERT INTO `dm_xa` VALUES ('8717', '6053107', 'Đắk Liêng', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('8718', '6053115', 'Đắk Nuê', '', '425', '0');
INSERT INTO `dm_xa` VALUES ('8719', '6053307', 'Quảng Tân', '', '426', '0');
INSERT INTO `dm_xa` VALUES ('8720', '6070129', 'Tà Nung', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8721', '6070707', 'Lạc Lâm', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8722', '6070709', 'Ka Đô', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8723', '6070915', 'Ninh Gia', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8724', '6070923', 'Tà Năng', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8725', '6071131', 'Đông Thanh', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8726', '6071909', 'Đạ Lây', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8727', '6071915', 'Triệu Hải', '', null, '0');
INSERT INTO `dm_xa` VALUES ('8728', '7010311', 'Thủ Thiêm', '', '429', '0');
INSERT INTO `dm_xa` VALUES ('8729', '7011111', '06', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8730', '7011113', '07', '', '433', '0');
INSERT INTO `dm_xa` VALUES ('8731', '7011309', 'Bình Thuận', '', '434', '0');
INSERT INTO `dm_xa` VALUES ('8732', '7011713', 'Phước Bình', '', '436', '0');
INSERT INTO `dm_xa` VALUES ('8733', '7011925', '13', '', '437', '0');
INSERT INTO `dm_xa` VALUES ('8734', '7012117', '09', '', '438', '0');
INSERT INTO `dm_xa` VALUES ('8735', '7012739', '20', '', '441', '0');
INSERT INTO `dm_xa` VALUES ('8736', '7012937', '27', '', '442', '0');
INSERT INTO `dm_xa` VALUES ('8737', '7013107', '04', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('8738', '7013111', '07', '', '443', '0');
INSERT INTO `dm_xa` VALUES ('8739', '7013507', 'Tân Thạnh Tây', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8740', '7013511', 'Phước Vĩnh An', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8741', '7013523', 'Phước Thạnh', '', '445', '0');
INSERT INTO `dm_xa` VALUES ('8742', '7013703', 'Tân Thới Nhì', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8743', '7013707', 'Thới Tam Thôn', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8744', '7013717', 'Xuân Thới Thượng', '', '446', '0');
INSERT INTO `dm_xa` VALUES ('8745', '7013901', 'Thị trấn An Lạc', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8746', '7013933', 'Tân Nhựt', '', '447', '0');
INSERT INTO `dm_xa` VALUES ('8747', '7050101', 'Mỹ Hương', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8748', '7050125', 'Mỹ Hải', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8749', '7050301', 'Lâm Sơn', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8750', '7050303', 'Tân Sơn', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8751', '7050325', 'Phước Tiến', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8752', '7070315', 'Bình Phước', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8753', '7070509', 'Lộc Tấn', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8754', '7070901', 'Thị trấn An Lộc', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8755', '7070933', 'Minh Hưng', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8756', '7090905', 'Thái Bình', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('8757', '7090917', 'Thành Long', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('8758', '7091109', 'Ninh Thạnh', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8759', '7091121', 'Long Thành Trung', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8760', '7091125', 'Long Thành Nam', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8761', '7091311', 'Lợi Thuận', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('8762', '7091517', 'Thanh Phước', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('8763', '7091713', 'Bình Thạnh', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8764', '7110101', 'Phú Cường', '', '480', '0');
INSERT INTO `dm_xa` VALUES ('8765', '7110301', 'Thị trấn Mỹ Phước', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8766', '7110321', 'Tân Long', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8767', '7110329', 'Thanh An', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8768', '7110501', 'Thị trấn Uyên Hưng', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8769', '7110523', 'Bình Mỹ', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8770', '7110539', 'Phú Chánh', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8771', '7130121', 'Tân Tiến', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8772', '7130329', 'Phú Thanh', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8773', '7130335', 'Phú Điền', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8774', '7130719', 'Bình Hòa', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('8775', '7130907', 'Gia Tân 3', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8776', '7130925', 'An Viễn', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8777', '7131101', 'Thị trấn Xuân Lộc', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8778', '7131113', 'Xuân Thạnh', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8779', '7131125', 'Long Giao', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8780', '7131135', 'Xuân Đường', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8781', '7131307', 'Xuân Trường', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8782', '7131313', 'Xuân Tâm', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8783', '7131329', 'Xuân Hưng', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8784', '7131513', 'An Phước', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8785', '7131515', 'Tam An', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8786', '7131533', 'Phước Bình', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8787', '7150107', 'Phú Thủy', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('8788', '7150303', 'Thị trấn Phan Rí Cửa', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('8789', '7150307', 'Vĩnh Hảo', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('8790', '7150705', 'Thuận Hòa', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8791', '7151505', 'Vũ Hoà', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('8792', '7170301', 'Phước Hưng', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('8793', '7170309', 'Phước Trung', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('8794', '7170513', 'Láng Lớn', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8795', '7170913', 'Châu Pha', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('8796', '7170915', 'Tóc Tiên', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('8797', '8010701', 'Thị trấn Mộc Hóa', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8798', '8011113', 'Thạnh Phú', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('8799', '8011315', 'Bình Hòa Bắc', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('8800', '8011509', 'An Ninh Đông', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8801', '8011513', 'Hiệp Hòa', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8802', '8011529', 'Hựu Thạnh', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8803', '8011717', 'Thạnh Đức', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('8804', '8012113', 'Long Trì', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('8805', '8012303', 'Bình Tịnh', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('8806', '8012319', 'Đức Tân', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('8807', '8012709', 'Mỹ Lộc', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8808', '8012723', 'Phước Lại', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8809', '8012725', 'Phước Vĩnh Tây', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8810', '8030113', 'Mỹ Ngãi', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('8811', '8030305', '3', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('8812', '8030713', 'Thường Phước 1', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('8813', '8031311', 'Đốc Binh Kiều', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8814', '8031317', 'Thanh Mỹ', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8815', '8031907', 'Tân Dương', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('8816', '8050501', 'Thị trấn An Phú', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('8817', '8050509', 'Nhơn Hội', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('8818', '8050931', 'Bình Thạnh Đông', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('8819', '8051523', 'Cô Tô', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('8820', '7050115', 'Bảo An', '', '461', '0');
INSERT INTO `dm_xa` VALUES ('8821', '7050305', 'Quảng Sơn', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8822', '7050317', 'Phước Chính', '', '462', '0');
INSERT INTO `dm_xa` VALUES ('8823', '7050705', 'Phước Thái', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8824', '7050723', 'Phước Hà', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8825', '7070107', 'Tân Thành', '', '465', '0');
INSERT INTO `dm_xa` VALUES ('8826', '7070317', 'Sơn Giang', '', '467', '0');
INSERT INTO `dm_xa` VALUES ('8827', '7070527', 'Lộc Thái', '', '468', '0');
INSERT INTO `dm_xa` VALUES ('8828', '7070709', 'Minh Hưng', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('8829', '7070915', 'Lợi Hưng', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8830', '7070917', 'Phước An', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8831', '7090309', 'Thạnh Bình', '', '472', '0');
INSERT INTO `dm_xa` VALUES ('8832', '7090511', 'Suối Ngô', '', '473', '0');
INSERT INTO `dm_xa` VALUES ('8833', '7090907', 'Biên Giới', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('8834', '7091113', 'Hiệp Tân', '', '476', '0');
INSERT INTO `dm_xa` VALUES ('8835', '7091301', 'Long Chữ', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('8836', '7091305', 'Long Giang', '', '477', '0');
INSERT INTO `dm_xa` VALUES ('8837', '7091509', 'Hiệp Thạnh', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('8838', '7091709', 'Gia Bình', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8839', '7110333', 'Long Nguyên', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8840', '7110535', 'Tân Mỹ', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8841', '7110541', 'Thường Tân', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8842', '7110707', 'Bình Chuẩn', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8843', '7130331', 'Phú Lộc', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8844', '7131121', 'Xuân Thanh', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8845', '7131133', 'Thừa Đức', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('8846', '7131305', 'Xuân Thành', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8847', '7131309', 'Suối Cao', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8848', '7131511', 'Bình An', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8849', '7131701', 'Phước Thiền', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('8850', '7150505', 'Phan Điền', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8851', '7151311', 'Tân Minh', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('8852', '7170707', 'Xuyên Mộc', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('8853', '7170909', 'Sông Xoài', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('8854', '8010111', 'Hướng Thọ Phú', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('8855', '8010513', 'Tuyên Bình Tây', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('8856', '8010515', 'Vĩnh Bình', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('8857', '8010709', 'Bình Hòa Đông', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('8858', '8010915', 'Tân Ninh', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('8859', '8011107', 'Tân Đông', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('8860', '8011305', 'Mỹ Quý Đông', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('8861', '8011313', 'Mỹ Thạnh Bắc', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('8862', '8011319', 'Bình Hòa Hưng', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('8863', '8011521', 'Hòa Khánh Nam', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8864', '8011533', 'Đức Hòa Hạ', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('8865', '8011705', 'Thạnh Hòa', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('8866', '8011907', 'Mỹ Lạc', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('8867', '8011909', 'Mỹ Thạnh', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('8868', '8012119', 'Thanh Phú Long', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('8869', '8012705', 'Long Thượng', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8870', '8030307', '4', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('8871', '8030309', 'Tân Khánh Đông', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('8872', '8030715', 'Thường Phước 2', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('8873', '8031107', 'Bình Thành', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('8874', '8031501', 'Thị trấn Mỹ Thọ', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8875', '8031517', 'Mỹ Xương', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8876', '8031533', 'Tân Hội Trung', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8877', '8031719', 'Mỹ An Hưng A', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('8878', '8031901', 'Thị trấn Lai Vung', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('8879', '8032121', 'An Khánh', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('8880', '8050517', 'Vĩnh Lộc', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('8881', '8050919', 'Phú An', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('8882', '8051303', 'Thị trấn Chi Lăng', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('8883', '8051311', 'Xuân Tô', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('8884', '8051315', 'An Cư', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('8885', '8051511', 'Châu Lăng', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('8886', '8051711', 'Long Điền B', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('8887', '8051723', 'Long Kiến', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('8888', '8051901', 'Thị trấn An Châu', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('8889', '8051925', 'Vĩnh Thành', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('8890', '8070305', '4', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('8891', '8070711', 'Thân Cửu Nghĩa', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('8892', '8070721', 'Đông Hòa', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('8893', '8070725', 'Hữu Đạo', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('8894', '8070735', 'Thạnh Phú', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('8895', '8070921', 'Phú Nhuận', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8896', '8070925', 'Bình Phú', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8897', '8070947', 'Long Trung', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8898', '8071327', 'Thiện Trí', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('8899', '8071341', 'Tân Thanh', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('8900', '8071729', 'Tân Thành', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('8901', '8090711', 'Mỹ Thuận', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('8902', '8090713', 'Thuận An', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('8903', '8090721', 'Tân Lược', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('8904', '8090727', 'Tân Quới', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('8905', '8090901', 'Thị trấn Tam Bình', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('8906', '8090903', 'Hòa Thạnh', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('8907', '8090905', 'Tân Lộc', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('8908', '8091115', 'Trà Côn', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('8909', '8091123', 'Tích Thiện', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('8910', '8091309', 'Trung Chánh', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('8911', '8110117', 'Phú Khương', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('8912', '8110707', 'Phước Mỹ Trung', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('8913', '8110731', 'Đa Phước Hội', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('8914', '8110741', 'An Thới', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('8915', '8110749', 'Cẩm Sơn', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('8916', '8110907', 'Mỹ Thạnh', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('8917', '8110941', 'Hưng Lễ', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('8918', '8111103', 'Tam Hiệp', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('8919', '8111117', 'Thới Lai', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('8920', '8111303', 'Tân Xuân', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('8921', '8130901', 'Thị trấn Minh Lương', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('8922', '8131903', 'Vĩnh Hòa', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('8923', '8132301', 'Hòn Tre', '', '580', '0');
INSERT INTO `dm_xa` VALUES ('8924', '8150503', 'Thới Long', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('8925', '8150515', 'Phước Thới', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('8926', '8151319', 'Xà Phiên', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('8927', '8170515', 'Hòa Lợi', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('8928', '8170519', 'Hưng Mỹ', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('8929', '8170705', 'Châu Điền', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('8930', '8190907', 'Viên Bình', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('8931', '8190931', 'Thạnh Thới Thuận', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('8932', '8191313', 'Khánh Hòa', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('8933', '8210703', 'Thị trấn Hộ Phòng', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('8934', '8230701', 'Thị trấn Trần Văn Thời', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('8935', '8230905', 'Lương Thế Trân', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('8936', '7050719', 'Phước Hữu', '', '464', '0');
INSERT INTO `dm_xa` VALUES ('8937', '7070701', 'Thị trấn Đức Phong', '', '469', '0');
INSERT INTO `dm_xa` VALUES ('8938', '7070913', 'Thanh Phú', '', '470', '0');
INSERT INTO `dm_xa` VALUES ('8939', '7090921', 'Long Vĩnh', '', '475', '0');
INSERT INTO `dm_xa` VALUES ('8940', '7091511', 'Phước Thạnh', '', '478', '0');
INSERT INTO `dm_xa` VALUES ('8941', '7091703', 'Đôn Thuận', '', '479', '0');
INSERT INTO `dm_xa` VALUES ('8942', '7110307', 'Minh Thạnh', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8943', '7110309', 'Minh Tân', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8944', '7110331', 'Tân Hưng', '', '481', '0');
INSERT INTO `dm_xa` VALUES ('8945', '7110513', 'Tân Hiệp', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8946', '7110517', 'Phước Hòa', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8947', '7110519', 'Tân Định', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8948', '7110549', 'Thái Hòa', '', '482', '0');
INSERT INTO `dm_xa` VALUES ('8949', '7110713', 'Tân Bình', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8950', '7110727', 'Đông Hòa', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('8951', '7130103', 'Hòa Bình', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8952', '7130125', 'Tân Mai', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8953', '7130149', 'Hóa An', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('8954', '7130309', 'Núi Tượng', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8955', '7130325', 'Phú Lâm', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('8956', '7130919', 'Thanh Bình', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8957', '7130921', 'Sông Trầu', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8958', '7130933', 'Hưng Thịnh', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8959', '7130943', 'Bình Minh', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('8960', '7131323', 'Bảo Hoà', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('8961', '7131523', 'Cẩm Đường', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('8962', '7150501', 'Thị trấn Chợ Lầu', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8963', '7150503', 'Phan Lâm', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('8964', '7150721', 'Thuận Minh', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('8965', '7150909', 'Hàm Mỹ', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8966', '7150913', 'Hàm Kiệm', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('8967', '7151509', 'Trà Tân', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('8968', '7170105', '3', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('8969', '7170523', 'Nghĩa Thành', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('8970', '8010301', 'Thị trấn Tân Hưng', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('8971', '8010303', 'Vĩnh Thạnh', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('8972', '8010315', 'Vĩnh Châu B', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('8973', '8010507', 'Thái Trị', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('8974', '8011105', 'Thủy Tây', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('8975', '8011709', 'Lương Bình', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('8976', '8011903', 'Long Thạnh', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('8977', '8012109', 'Hiệp Thạnh', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('8978', '8012525', 'Mỹ Lệ', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('8979', '8012707', 'Phứơc Hậu', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8980', '8012719', 'Trường Bình', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8981', '8012727', 'Long Phụng', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('8982', '8030119', 'Hòa An', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('8983', '8030505', 'Tân Hộ Cơ', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('8984', '8030921', 'Phú Hiệp', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('8985', '8031315', 'Phú Điền', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('8986', '8031509', 'An Bình', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('8987', '8032123', 'Phú Long', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('8988', '8050101', 'Mỹ Bình', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('8989', '8050307', 'Vĩnh Tế', '', '535', '0');
INSERT INTO `dm_xa` VALUES ('8990', '8051115', 'Thạnh Mỹ Tây', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('8991', '8051319', 'Vĩnh Trung', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('8992', '8051323', 'An Hảo', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('8993', '8052111', 'Vĩnh Chánh', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('8994', '8052115', 'Định Thành', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('8995', '8070929', 'Nhị Quý', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8996', '8070933', 'Phú Quý', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8997', '8070951', 'Tân Phong', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8998', '8070955', 'Ngũ Hiệp', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('8999', '8071105', 'Hòa Tịnh', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9000', '8071307', 'Mỹ Trung', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9001', '8071321', 'Hậu Thành', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9002', '8071717', 'Tân Trung', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9003', '8071719', 'Tân Đông', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9004', '8090109', '5', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9005', '8090303', 'Đồng Phú', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9006', '8091301', 'Thị trấn Vũng Liêm', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9007', '8091335', 'Trung An', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9008', '8110101', '1', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9009', '8110111', '6', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9010', '8110331', 'Phú An Hòa', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9011', '8110501', 'Thị trấn Chợ Lách', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9012', '8110511', 'Tân Thiềng', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9013', '8110751', 'Hương Mỹ', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9014', '8111115', 'Vang Quới Đông', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9015', '8111129', 'Thạnh Trị', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9016', '8111507', 'Tân Phong', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9017', '8130313', 'Tiên Hải', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9018', '8130701', 'Thị trấn Tân Hiệp', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('9019', '8130715', 'Thạnh Trị', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('9020', '8131115', 'Hòa Hưng', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9021', '8132117', 'Thổ Châu', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('9022', '8150311', 'Thới Thuận', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('9026', '8151309', 'Long Phú', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('9027', '8170103', 'Phường 2', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('9028', '8170111', 'Phường 6', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('9030', '8170505', 'Thanh Mỹ', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9031', '8170507', 'Lương Hòa', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9032', '8170719', 'Thạnh Phú', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('9033', '8190101', '1', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9034', '8190325', 'Trinh Phú', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9035', '8210711', 'Tân Phong', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9036', '8230129', 'Hòa Tân', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9037', '8230309', 'Tân Phú', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('9038', '8230703', 'Thị trấn Sông Đốc', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('9039', '8231105', 'Tân Đức', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9040', '7110709', 'Thuận Giao', '', '483', '0');
INSERT INTO `dm_xa` VALUES ('9041', '7130105', 'Trung Dũng', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('9042', '7130129', 'Tam Hiệp', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('9043', '7130137', 'Long Bình Tân', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('9044', '7130151', 'Hiệp Hòa', '', '484', '0');
INSERT INTO `dm_xa` VALUES ('9045', '7130307', 'Phú An', '', '485', '0');
INSERT INTO `dm_xa` VALUES ('9046', '7130517', 'Gia Canh', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('9047', '7131505', 'An Hoà', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9048', '7131535', 'Tân Hiệp', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9049', '7131711', 'Phú Hữu', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9050', '7150111', 'Bình Hưng', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9051', '7150509', 'Phan Hòa', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9052', '7150915', 'Hàm Cường', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('9053', '7151301', 'Thị trấn La Gi', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('9054', '7151521', 'Đức Hạnh', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('9055', '7170121', '11', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9056', '7170303', 'Phước Hiệp', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('9057', '7170505', 'Suối Nghệ', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('9058', '7170517', 'Kim Long', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('9059', '7170717', 'Hòa Hiệp', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('9060', '8010107', '4', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9061', '8010703', 'Thạnh Trị', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('9062', '8011309', 'Mỹ Thạnh Tây', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('9063', '8011503', 'Thị trấn Đức Hòa', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9064', '8011701', 'Thị trấn Bến Lức', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9065', '8012101', 'Thị trấn Tầm Vu', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9066', '8012115', 'Phú Ngãi Trị', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9067', '8012311', 'Lạc Tấn', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9068', '8012317', 'Tân Phước Tây', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9069', '8012515', 'Long Hòa', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9070', '8012521', 'Tân Ân', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9071', '8012533', 'Long Hựu Đông', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9072', '8012721', 'Long An', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9073', '8030907', 'Phú Ninh', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9074', '8030913', 'Phú Thọ', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9075', '8031519', 'Bình Hàng Trung', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9076', '8050301', 'Châu Phú B', '', '535', '0');
INSERT INTO `dm_xa` VALUES ('9077', '8050303', 'Châu Phú A', '', '535', '0');
INSERT INTO `dm_xa` VALUES ('9078', '8050505', 'Khánh Bình', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9079', '8050515', 'Phước Hưng', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9080', '8050713', 'Long Phú', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9081', '8051907', 'Vĩnh Hanh', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9082', '8070101', '5', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9083', '8070907', 'Phú Cường', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9084', '8071101', 'Thị trấn Chợ Gạo', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9085', '8071103', 'Trung Hòa', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9086', '8071107', 'Mỹ Tịnh An', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9087', '8071117', 'Quơn Long', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9088', '8071303', 'Hậu Mỹ Bắc B', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9089', '8071315', 'Mỹ Lợi B', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9090', '8071317', 'Thiện Trung', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9091', '8071519', 'Long Vĩnh', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9092', '8071707', 'Gia Thuận', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9093', '8090103', '2', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9094', '8090327', 'Hòa Phú', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9095', '8090715', 'Đông Thạnh', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9096', '8090725', 'Thành Lợi', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9097', '8090731', 'Đông Thành', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9098', '8091311', 'Trung Hiệp', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9099', '8110313', 'Tiên Long', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9100', '8110725', 'Phước Hiệp', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9101', '8111325', 'Phú Lễ', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9102', '8130109', 'An Hòa', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('9103', '8130111', 'Rạch Sỏi', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('9104', '8130505', 'Bình Giang', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('9105', '8130913', 'Bình An', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('9106', '8130915', 'Thạnh Lộc', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('9107', '8131101', 'Thị trấn Giồng Giềng', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9108', '8131121', 'Long Thạnh', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9109', '8131301', 'Thị trấn Gò Quao', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('9110', '8131307', 'Thới Quản', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('9111', '8131309', 'Định An', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('9112', '8131905', 'Vĩnh Bình Bắc', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('9115', '8150131', 'Long Hòa', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('9118', '8150711', 'Tân Thuận', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9119', '8151311', 'Thuận Hưng', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('9120', '8151315', 'Vĩnh Viễn', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('9121', '8170701', 'Thị trấn Cầu Kè', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('9122', '8170903', 'Thị trấn Cầu Quan', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9123', '8171113', 'Hiệp Hòa', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9124', '8171123', 'Hiệp Mỹ', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9125', '8171125', 'Thạnh Hòa Sơn', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9126', '8190105', '3', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9127', '8190319', 'Xuân Hòa', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9128', '8190523', 'Long Đức', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9129', '8190901', 'Thị trấn Mỹ Xuyên', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9130', '8191103', 'Thị trấn Ngã Năm', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9131', '8210501', 'Thị trấn Hòa Bình', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9132', '8230113', '8', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9133', '8230117', 'An Xuyên', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9134', '8230303', 'Biển Bạch Đông', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('9135', '8230315', 'Hồ Thị Kỷ', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('9136', '7130523', 'Phú Cường', '', '486', '0');
INSERT INTO `dm_xa` VALUES ('9137', '7130715', 'Bình Lợi', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('9138', '7130717', 'Tân Bình', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('9139', '7130913', 'Bàu Hàm 2', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('9140', '7130927', 'Bàu Hàm', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('9141', '7130929', 'Sông Thao', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('9142', '7131301', 'Thị trấn Gia Ray', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9143', '7131315', 'Lang Minh', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9144', '7131707', 'Phú Hội', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9145', '7150103', 'Mũi Né', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9146', '7150531', 'Hồng Phong', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9147', '7150731', 'Hàm Hiệp', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9148', '7150921', 'Tân Thuận', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('9149', '7151105', 'La Ngâu', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('9150', '7151119', 'Nghị Đức', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('9151', '7151121', 'Đức Tân', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('9152', '7151515', 'Đức Chính', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('9153', '7151519', 'Đa Kai', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('9154', '7170701', 'Thị trấn Phước Bửu', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('9155', '7170903', 'Hội Bài', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('9156', '7171101', 'Thị trấn Long Điền', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9157', '7171103', 'Thị trấn Long Hải', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9158', '8010307', 'Vĩnh Đại', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('9159', '8010311', 'Hưng Thạnh', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('9160', '8010313', 'Vĩnh Châu A', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('9161', '8010901', 'Thị trấn Tân Thạnh', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9162', '8010905', 'Bắc Hòa', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9163', '8010917', 'Tân Lập', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9164', '8011117', 'Thuận Bình', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('9165', '8011539', 'Đức Hòa Đông', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9166', '8011703', 'Thạnh Lợi', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9167', '8011715', 'An Thạnh', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9168', '8011719', 'Nhựt Chánh', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9169', '8011723', 'Long Hiệp', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9170', '8012315', 'Bình Trinh Đông', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9171', '8030515', 'An Phước', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('9172', '8030727', 'Bình Thạnh', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9173', '8030731', 'An Bình B', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9174', '8031123', 'Tân Huề', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9175', '8031325', 'Thạnh Lợi', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('9176', '8031505', 'Tân Nghĩa', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9177', '8031523', 'Bình Thạnh', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9178', '8031707', 'Định Yên', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9179', '8031715', 'Vĩnh Thạnh', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9180', '8031725', 'Bình Thạnh Trung', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9181', '8031915', 'Tân Phước', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('9182', '8032111', 'Tân Nhuận Đông', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9183', '8050105', 'Mỹ Xuyên', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9184', '8050507', 'Quốc Thái', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9185', '8050519', 'Vĩnh Hậu', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9186', '8050705', 'Vĩnh Xương', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9187', '8050903', 'Thị trấn Chợ Vàm', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9188', '8050911', 'Phú Hiệp', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9189', '8050929', 'Phú Hưng', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9190', '8050933', 'Tân Hòa', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9191', '8051505', 'Lê Trì', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9192', '8051507', 'Vĩnh Gia', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9193', '8051525', 'Tân Tuyến', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9194', '8051721', 'Long Giang', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9195', '8070107', '3', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9196', '8070509', 'Thạnh Hoà', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9197', '8070709', 'Tân Lý Tây', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9198', '8070939', 'Phú An', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9199', '8071345', 'An Hữu', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9200', '8071513', 'Yên Luông', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9201', '8090523', 'Tân An Hội', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9202', '8090701', 'Thị trấn Cái Vồn', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9203', '8090917', 'Phú Thịnh', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9204', '8091313', 'Thanh Bình', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9205', '8110121', 'Bình Phú', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9206', '8110519', 'Vĩnh Hòa', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9207', '8110713', 'Thành An', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9208', '8110925', 'Châu Hòa', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9209', '8110939', 'Thạnh Phú Đông', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9210', '8110943', 'Hưng Nhượng', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9211', '8111119', 'Phú Vang', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9212', '8111335', 'Tân Thủy', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9213', '8111509', 'Thới Thạnh', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9214', '8111529', 'Giao Thạnh', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9215', '8130115', 'Phi Thông', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('9216', '8130301', 'Thị trấn Hà Tiên', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9217', '8130303', 'Thị trấn Kiên Lương', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9218', '8130307', 'Tân Khánh Hòa', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9219', '8130507', 'Nam Thái Sơn', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('9220', '8131117', 'Hoà Lợi', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9221', '8131119', 'Hoà An', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9222', '8131503', 'Tây Yên', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('9223', '8131507', 'Nam Yên', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('9224', '8131705', 'Đông Hòa', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('9225', '8131715', 'Đông Hưng B', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('9226', '8131907', 'Vĩnh Bình Nam', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('9227', '8132107', 'Cửa Dương', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('9231', '8150521', 'Châu Văn Liêm', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('9232', '8150713', 'Nhơn Nghĩa', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9233', '8170113', 'Phường 7', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('9235', '8170317', 'Đại Phước', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('9236', '8170911', 'Long Thới', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9237', '8170919', 'Tân Hòa', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9238', '8171517', 'Đông Hải', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('9239', '8190117', '9', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9240', '8190529', 'An Thạnh 1', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9241', '8190535', 'Trung Bình', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9242', '8190537', 'An Thạnh 3', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9243', '8190911', 'Thạnh Quới', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9244', '8191315', 'Vĩnh Châu', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('9245', '8191317', 'Lạc Hòa', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('9246', '8210309', 'Lộc Ninh', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('9247', '8210719', 'Long Điền', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9248', '8210721', 'Long Điền Tây', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9249', '8230109', '6', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9250', '8230121', 'Tắc Vân', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9251', '8230127', 'Lý Văn Lâm', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9252', '8230305', 'Biển Bạch', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('9253', '8230711', 'Khánh Hưng', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('9254', '7130711', 'Thiện Tân', '', '487', '0');
INSERT INTO `dm_xa` VALUES ('9255', '7131129', 'Nhân Nghĩa', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('9256', '7131321', 'Xuân Phú', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9257', '7131325', 'Xuân Định', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9258', '7131333', 'Xuân Tây', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9259', '7131337', 'Xuân Bảo', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9260', '7131527', 'Suối Trầu', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9261', '7131705', 'Đại Phước', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9262', '7131721', 'Vĩnh Thanh', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9263', '7131723', 'Phước Khánh', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9264', '7150101', 'Đức Thắng', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9265', '7150113', 'Hưng Long', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9266', '7150123', 'Phú Hải', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9267', '7150309', 'Phong Phú', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9268', '7150729', 'Hàm Liêm', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9269', '7170103', '2', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9270', '7170123', 'Long Sơn', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9271', '7170305', 'Phước Nguyên', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('9272', '7170315', 'Long Hương', '', '503', '0');
INSERT INTO `dm_xa` VALUES ('9273', '7170511', 'Xà Bang', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('9274', '7171113', 'Phước Long Hội', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9275', '8010103', '2', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9276', '8010319', 'Hưng Hà', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('9277', '8010503', 'Vĩnh Trị', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('9278', '8010517', 'Khánh Hưng', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('9279', '8010923', 'Tân Bình', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9280', '8011119', 'Tân Hiệp', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('9281', '8011531', 'Đức Hòa Thượng', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9282', '8011535', 'Mỹ Hạnh Bắc', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9283', '8011713', 'Tân Bửu', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9284', '8011919', 'Bình Thạnh', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('9285', '8012103', 'Bình Quới', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9286', '8012307', 'An Nhựt Tân', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9287', '8012729', 'Đông Thạnh', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9288', '8012731', 'Phước Vĩnh Đông', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9289', '8030109', '6', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9290', '8030117', 'Mỹ Trà', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9291', '8030513', 'Tân Phước', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('9292', '8030709', 'Phú Thuận B', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9293', '8030725', 'Tân Hội', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9294', '8030909', 'Phú Thành A', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9295', '8031115', 'Phú Lợi', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9296', '8031121', 'Tân Hòa', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9297', '8031301', 'Thị trấn Mỹ An', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('9298', '8031303', 'Hưng Thạnh', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('9299', '8031511', 'Nhị Mỹ', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9300', '8031527', 'Mỹ Hiệp', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9301', '8031535', 'Gáo Giồng', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9302', '8031721', 'Mỹ An Hưng B', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9303', '8050113', 'Mỹ Khánh', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9304', '8050309', 'Vĩnh Mỹ', '', '535', '0');
INSERT INTO `dm_xa` VALUES ('9305', '8050503', 'Khánh An', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9306', '8050511', 'Phú Hữu', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9307', '8051101', 'Thị trấn Cái Dầu', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9308', '8051107', 'Mỹ Phú', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9309', '8051313', 'Văn Giáo', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('9310', '8070703', 'Tân Hội Đông', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9311', '8070707', 'Tân Lý Đông', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9312', '8070733', 'Phước Thạnh', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9313', '8070917', 'Tân Phú', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9314', '8071129', 'Long Bình Điền', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9315', '8090305', 'Hòa Ninh', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9316', '8090319', 'Lộc Hòa', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9317', '8090321', 'Phú Đức', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9318', '8090329', 'Long An', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9319', '8090513', 'Mỹ Phước', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9320', '8090719', 'Đông Bình', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9321', '8090913', 'Phú Lộc', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9322', '8090925', 'Tân Phú', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9323', '8091107', 'Nhơn Bình', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('9324', '8091331', 'Hiếu Thuận', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9325', '8110107', '4', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9326', '8110327', 'Mỹ Thành', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9327', '8110727', 'Bình Khánh Tây', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9328', '8110933', 'Tân Thanh', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9329', '8111105', 'Long Định', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9330', '8111109', 'Phú Thuận', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9331', '8111319', 'An Ngãi Tây', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9332', '8111337', 'Vĩnh Hòa', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9333', '8111531', 'Thạnh Hải', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9334', '8130317', 'Hòa Điền', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9335', '8130709', 'Thạnh Đông', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('9336', '8131103', 'Thạnh Hưng', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9337', '8131303', 'Vĩnh Hòa Hưng Bắc', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('9338', '8132115', 'Bãi Thơm', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('9339', '8132307', 'Sơn Hải', '', '580', '0');
INSERT INTO `dm_xa` VALUES ('9340', '8132309', 'An Sơn', '', '580', '0');
INSERT INTO `dm_xa` VALUES ('9341', '8150105', 'An Thới', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('9345', '8150307', 'Thốt Nốt', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('9347', '8150519', 'Định Môn', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('9349', '8151307', 'Long Trị', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('9350', '8170107', 'Phường 4', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('9351', '8170315', 'Phương Thạnh', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('9352', '8170901', 'Thị trấn Tiểu Cần', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9353', '8170915', 'Tập Ngãi', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9354', '8171307', 'An Quảng Hữu', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9355', '8171507', 'Long Khánh', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('9356', '8171519', 'Hiệp Thạnh', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('9357', '8190505', 'Tân Thạnh', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9358', '8190513', 'An Thạnh 2', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9359', '8190705', 'Mỹ Tú', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9360', '8190729', 'An Hiệp', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9361', '8190929', 'Tham Đôn', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9362', '8191101', 'Thị trấn Phú Lộc', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9363', '8191117', 'Tân Long', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9364', '8210307', 'Ninh Hòa', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('9365', '8210323', 'Vĩnh Thanh', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('9366', '8230301', 'Thị trấn Thới Bình', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('9367', '8230913', 'Phú Mỹ', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9368', '8230923', 'Trần Thới', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9369', '8231117', 'Nguyễn Huân', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9370', '7130935', 'Đông Hoà', '', '488', '0');
INSERT INTO `dm_xa` VALUES ('9371', '7131117', 'Bàu Sen', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('9372', '7131311', 'Xuân Thọ', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9373', '7131317', 'Xuân Hiệp', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9374', '7131341', 'Sông Ray', '', '490', '0');
INSERT INTO `dm_xa` VALUES ('9375', '7131509', 'Tam Phước', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9376', '7131521', 'Bình Sơn', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9377', '7131537', 'Phước Thái', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9378', '7150125', 'Phong Nẫm', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9379', '7150515', 'Bình An', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9380', '7150713', 'Hàm Phú', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9381', '7150719', 'Đông Giang', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9382', '7151315', 'Tân Xuân', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('9383', '7151321', 'Tân Thắng', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('9384', '7151501', 'Võ Xu', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('9385', '7170101', '1', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9386', '7170703', 'Phước Thuận', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('9387', '7170907', 'Mỹ Xuân', '', '506', '0');
INSERT INTO `dm_xa` VALUES ('9388', '7171107', 'Tam An', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9389', '8012111', 'Dương Xuân Hội', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9390', '8030107', '4', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9391', '8030905', 'An Long', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9392', '8031109', 'Tân Phú', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9393', '8031111', 'An Phong', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9394', '8031717', 'Tân Mỹ', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9395', '8031911', 'Long Hậu', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('9396', '8050109', 'Mỹ Phước', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9397', '8050111', 'Mỹ Hòa Hưng', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9398', '8051103', 'Khánh Hòa', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9399', '8051317', 'An Nông', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('9400', '8051705', 'Mỹ Hội Đông', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9401', '8051727', 'An Thạnh Trung', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9402', '8052101', 'Thị trấn Núi Sập', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('9403', '8070103', '4', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9404', '8070121', 'Mỹ Phong', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9405', '8070309', 'Long Hưng', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('9406', '8070705', 'Tân Hương', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9407', '8070901', 'Thị trấn Cai Lậy', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9408', '8071119', 'Bình Phục Nhứt', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9409', '8071135', 'Hòa Định', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9410', '8071335', 'An Thái Đông', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9411', '8071501', 'Thị trấn Vĩnh Bình', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9412', '8071509', 'Thành Công', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9413', '8071705', 'Tân Phước', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9414', '8071733', 'Phú Tân', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9415', '8090115', 'Trường An', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9416', '8090301', 'Thị trấn Long Hồ', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9417', '8090507', 'Hòa Tịnh', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9418', '8090723', 'Tân An Thạnh', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9419', '8090933', 'Bình Ninh', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9420', '8091101', 'Thị trấn Trà Ôn', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('9421', '8091323', 'Trung Hiếu', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9422', '8110303', 'Tân Thạch', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9423', '8110309', 'Phú Đức', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9424', '8110345', 'An Hóa', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9425', '8110739', 'Thành Thới A', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9426', '8111125', 'Phú Long', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9427', '8111133', 'Bình Thắng', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9428', '8111139', 'Thới Thuận', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9429', '8111305', 'Mỹ Hòa', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9430', '8111511', 'Quới Điền', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9431', '8132303', 'Hòn Nghệ', '', '580', '0');
INSERT INTO `dm_xa` VALUES ('9432', '8150107', 'Bùi Hữu Nghĩa', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('9433', '8150115', 'Trà An', '', '584', '1');
INSERT INTO `dm_xa` VALUES ('9434', '8150133', 'Thới An Đông', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('9435', '8150709', 'Tân Hòa', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9437', '8170511', 'Nguyệt Hóa', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9438', '8170713', 'Phong Thạnh', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('9439', '8171121', 'Trường Thọ', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9440', '8171301', 'Thị trấn Trà Cú', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9441', '8171313', 'Thanh Sơn', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9442', '8171317', 'Đại An', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9443', '8190115', '8', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9444', '8190323', 'Ba Trinh', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9445', '8190509', 'Đại Ân 1', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9446', '8190521', 'Song Phụng', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9447', '8190525', 'Châu Khánh', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9448', '8190725', 'Phú Tân', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9449', '8190909', 'Thạnh Thới An', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9450', '8190927', 'Gia Hòa 2', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9451', '8191107', 'Lâm Tân', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9452', '8191311', 'Hòa Đông', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('9453', '8210103', '3', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('9454', '8210515', 'Vĩnh Bình', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9455', '8230511', 'Khánh An', '', '612', '0');
INSERT INTO `dm_xa` VALUES ('9456', '8231101', 'Thị trấn Đầm Dơi', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9457', '8231111', 'Tân Duyệt', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9458', '7131119', 'Xuân Tân', '', '489', '0');
INSERT INTO `dm_xa` VALUES ('9459', '7131529', 'Bàu Cạn', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9460', '7150105', 'Phú Trinh', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9461', '7150305', 'Phan Dũng', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9462', '7150523', 'Phan Thanh', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9463', '7150533', 'Phan Tiến', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9464', '7150709', 'Hàm Trí', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9465', '7150723', 'Hàm Chính', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9466', '7150903', 'Mỹ Thạnh', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('9467', '7150919', 'Thuận Quí', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('9468', '7151305', 'Tân Nghĩa', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('9469', '7170109', '5', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9470', '7170503', 'Bình Ba', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('9471', '7171105', 'An Ngãi', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9472', '8010101', '1', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9473', '8010109', '5', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9474', '8010119', 'Khánh Hậu', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9475', '8010321', 'Hưng Điền', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('9476', '8010721', 'Thạnh Hưng', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('9477', '8010909', 'Nhơn Hòa Lập', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9478', '8010913', 'Tân Thành', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9479', '8010921', 'Hậu Thạnh Tây', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9480', '8011303', 'Mỹ Thạnh Đông', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('9481', '8011505', 'Thị trấn Hiệp Hòa', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9482', '8011527', 'Đức Lập Hạ', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9483', '8011911', 'Mỹ An', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('9484', '8011921', 'Nhị Thành', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('9485', '8012117', 'Phước Tân Hưng', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9486', '8012309', 'Quê Mỹ Thạnh', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9487', '8012501', 'Thị trấn Cần Đước', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9488', '8012513', 'Long Sơn', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9489', '8012517', 'Tân Trạch', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9490', '8030705', 'Long Khánh B', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9491', '8030707', 'Phú Thuận A', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9492', '8031321', 'Mỹ Đông', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('9493', '8031529', 'Ba Sao', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9494', '8032115', 'Phú Hựu', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9495', '8032117', 'An Phú Thuận', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9496', '8050703', 'Phú Lộc', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9497', '8051521', 'An Tức', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9498', '8051725', 'Bình Phước Xuân', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9499', '8051921', 'Vĩnh Nhuận', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9500', '8052117', 'Mỹ Phú Đông', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('9501', '8052121', 'Vĩnh Khánh', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('9502', '8070505', 'Thạnh Tân', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9503', '8070915', 'Mỹ Thành Nam', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9504', '8071313', 'Mỹ Tân', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9505', '8071325', 'Hòa Khánh', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9506', '8071339', 'Mỹ Lương', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9507', '8071507', 'Đồng Thạnh', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9508', '8071529', 'Tân Phú', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9509', '8090923', 'Tường Lộc', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9510', '8090927', 'Long Phú', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9511', '8090929', 'Long Mỹ', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9512', '8091307', 'Quới Thiện', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9513', '8091319', 'Hiếu Phụng', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9514', '8110509', 'Hòa Nghĩa', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9515', '8110521', 'Hưng Khánh Trung', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9516', '8110715', 'Tân Thanh Tây', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9517', '8110905', 'Phong Mỹ', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9518', '8110921', 'Lương Hòa', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9519', '8111341', 'An Đức', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9520', '8111503', 'Phú Khánh', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9521', '8111533', 'Thạnh Phong', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9522', '8130101', 'Vĩnh Thanh Vân', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('9523', '8130309', 'Phú Mỹ', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9524', '8130321', 'Bình An', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('9525', '8131109', 'Thạnh Hòa', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9526', '8131505', 'Tây Yên A', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('9528', '8150137', 'Long Tuyền', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('9530', '8150705', 'An Hội', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9531', '8150721', 'Phú An', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9534', '8170703', 'Hòa Ân', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('9536', '8171321', 'Đôn Châu', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9537', '8171515', 'Long Vĩnh', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('9538', '8190113', '7', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9539', '8191123', 'Mỹ Quới', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9540', '8210101', '2', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('9541', '8210507', 'Hưng Thành', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9542', '8210715', 'Phong Thạnh Tây', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9543', '8210717', 'Long Điền Đông', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9544', '8210723', 'An Trạch', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9545', '8210725', 'Tân Thạnh', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9546', '8230501', 'Thị trấn U Minh', '', '612', '0');
INSERT INTO `dm_xa` VALUES ('9547', '8230911', 'Đông Thới', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9548', '8231305', 'Hiệp Tùng', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('9549', '7131503', 'Phước Tân', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9550', '7131531', 'Long Phước', '', '491', '0');
INSERT INTO `dm_xa` VALUES ('9551', '7150313', 'Phước Thể', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9552', '7150317', 'Chí Công', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9553', '7150319', 'Hòa Minh', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9554', '7150527', 'Sông Lũy', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9555', '7151309', 'Tân Bình', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('9556', '7151503', 'Mê Pu', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('9557', '7170119', '10', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9558', '7170709', 'Bông Trang', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('9559', '7170723', 'Bình Châu', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('9560', '7171109', 'Phước Thạnh', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9561', '7171119', 'Láng Dài', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9562', '7171121', 'Lộc An', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9563', '7171123', 'Phước Tỉnh', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9564', '8010121', 'An Vĩnh Ngãi', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9565', '8010305', 'Vĩnh Lợi', '', '510', '0');
INSERT INTO `dm_xa` VALUES ('9566', '8010501', 'Thị trấn Vĩnh Hưng', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('9567', '8010717', 'Bình Hòa Trung', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('9568', '8011727', 'Phước Lợi', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9569', '8012321', 'Nhựt Ninh', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9570', '8012503', 'Long Trạch', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9571', '8012505', 'Long Khê', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9572', '8030125', 'Tịnh Thới', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9573', '8030311', 'Tân Phú Đông', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('9574', '8031309', 'Tân Kiều', '', '529', '0');
INSERT INTO `dm_xa` VALUES ('9575', '8032103', 'Tân Phú', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9576', '8032105', 'Tân Phú Trung', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9577', '8050513', 'Phú Hội', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9578', '8050709', 'Tân An', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9579', '8050711', 'Long An', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9580', '8050907', 'Phú Long', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9581', '8051509', 'Ba Chúc', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9582', '8051527', 'Ô Lâm', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9583', '8051911', 'Vĩnh Bình', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9584', '8051919', 'Vĩnh Lợi', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9585', '8070105', '7', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9586', '8070303', '2', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('9587', '8070501', 'Thị trấn Mỹ Phước', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9588', '8070517', 'Tân Lập 1', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9589', '8070519', 'Tân Hòa Tây', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9590', '8070521', 'Mỹ Phước', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9591', '8070927', 'Nhị Mỹ', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9592', '8071113', 'Lương Hòa Lạc', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9593', '8071123', 'Tân Thuận Bình', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9594', '8071305', 'Hậu Mỹ Bắc A', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9595', '8071505', 'Bình Phú', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9596', '8071523', 'Vĩnh Hựu', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9597', '8090119', 'Tân Hòa', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9598', '8090315', 'Long Phước', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9599', '8090323', 'Thạnh Quới', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9600', '8090325', 'Phú Quới', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9601', '8090915', 'Mỹ Lộc', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9602', '8110115', '8', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9603', '8110305', 'An Khánh', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9604', '8110307', 'Phú Túc', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9605', '8110317', 'Quới Thành', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9606', '8110935', 'Tân Hào', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9607', '8111131', 'Đại Hòa Lộc', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9608', '8111301', 'Thị trấn Ba Tri', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9609', '8111331', 'Bảo Thạnh', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9610', '8111339', 'Vĩnh An', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9611', '8130515', 'Thổ Sơn', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('9612', '8131113', 'Ngọc Chúc', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9613', '8131313', 'Vĩnh Hòa Hưng Nam', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('9614', '8131915', 'Vĩnh Phong', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('9615', '8132109', 'Hàm Ninh', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('9616', '8132113', 'An Thới', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('9617', '8132305', 'Lại Sơn', '', '580', '0');
INSERT INTO `dm_xa` VALUES ('9619', '8150507', 'Thới', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('9620', '8150715', 'Thạnh Xuân', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9621', '8150719', 'Đông Thạnh', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9623', '8170307', 'Huyền Hội', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('9624', '8170521', 'Hòa Minh', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9625', '8170907', 'Hiếu Tử', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9626', '8171105', 'Mỹ Long', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9627', '8171319', 'Đôn Xuân', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9628', '8171325', 'Long Hiệp', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9629', '8190111', '6', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9630', '8190307', 'Thới An Hội', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9631', '8190313', 'Đại Hải', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9632', '8190517', 'Hậu Thạnh', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9633', '8190713', 'Mỹ Phước', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9634', '8190719', 'Phú Tâm', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9635', '8190903', 'Tài Văn', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9636', '8191307', 'Vĩnh Phước', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('9637', '8191309', 'Vĩnh Hiệp', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('9638', '8210511', 'Châu Thới', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9639', '8210707', 'Phong Thạnh Đông', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9640', '8230105', '4', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9641', '8230125', 'Hòa Thành', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9642', '8230715', 'Lợi An', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('9643', '8230903', 'Thị trấn Cái Đôi Vàm', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9644', '8230907', 'Phú Hưng', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9645', '8231303', 'Hàm Rồng', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('9646', '8231315', 'Viên An Đông', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('9647', '7131703', 'Long Tân', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9648', '7131715', 'Long Thọ', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9649', '7131717', 'Phú Đông', '', '492', '0');
INSERT INTO `dm_xa` VALUES ('9650', '7150129', 'Tiến Thành', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9651', '7150311', 'Phú Lạc', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9652', '7150321', 'Hoà Phú', '', '494', '0');
INSERT INTO `dm_xa` VALUES ('9653', '7150529', 'Bình Tân', '', '495', '0');
INSERT INTO `dm_xa` VALUES ('9654', '7150703', 'Hồng Liêm', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9655', '7150901', 'Tân Lập', '', '497', '0');
INSERT INTO `dm_xa` VALUES ('9656', '7151117', 'Huy Khiêm', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('9657', '7170713', 'Hòa Bình', '', '505', '0');
INSERT INTO `dm_xa` VALUES ('9658', '7171117', 'Long Tân', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9659', '8010117', 'Bình Tâm', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9660', '8010919', 'Tân Hòa', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9661', '8011501', 'Thị trấn Hậu Nghĩa', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9662', '8012305', 'Mỹ Bình', '', '520', '0');
INSERT INTO `dm_xa` VALUES ('9663', '8012715', 'Long Hậu', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9664', '8030103', '2', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9665', '8030105', '3', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9666', '8030111', '11', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9667', '8030503', 'Bình Phú', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('9668', '8030911', 'Phú Thành B', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9669', '8030917', 'Phú Cường', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9670', '8031105', 'Tân Bình', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9671', '8031119', 'Tân Quới', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9672', '8031521', 'Bình Hàng Tây', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9673', '8031709', 'Long Hưng A', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9674', '8031923', 'Phong Hòa', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('9675', '8032101', 'Thị trấn Cái Tàu Hạ', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9676', '8050119', 'Mỹ Thạnh', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9677', '8050707', 'Vĩnh Hòa', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9678', '8050921', 'Phú Xuân', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9679', '8051109', 'Ô Long Vỹ', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9680', '8051713', 'Kiến Thành', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9681', '8052123', 'Thoại Giang', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('9682', '8070515', 'Hưng Thạnh', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9683', '8070717', 'Nhị Bình', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9684', '8070737', 'Bàn Long', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9685', '8070923', 'Tân Hội', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9686', '8070931', 'Thanh Hòa', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9687', '8070935', 'Long Khánh', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9688', '8070943', 'Long Tiên', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9689', '8071331', 'Mỹ Đức Tây', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9690', '8071527', 'Tân Thới', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9691', '8071711', 'Vàm Láng', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9692', '8071715', 'Kiểng Phước', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9693', '8090317', 'Phước Hậu', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9694', '8091315', 'Trung Thành Tây', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9695', '8091317', 'Tân An Luông', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9696', '8091327', 'Trung Ngãi', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9697', '8110129', 'Phú Nhuận', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9698', '8110335', 'Phước Thạnh', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9699', '8110517', 'Phú Sơn', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9700', '8110733', 'Khánh Thạnh Tân', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9701', '8110909', 'Lương Phú', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9702', '8111317', 'Tân Hưng', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9703', '8111517', 'Bình Thạnh', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9704', '8130105', 'Vĩnh Hiệp', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('9705', '8130509', 'Mỹ Hiệp Sơn', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('9706', '8130513', 'Sóc Sơn', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('9707', '8130517', 'Mỹ Lâm', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('9708', '8130907', 'Giục Tượng', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('9709', '8131107', 'Thạnh Lộc', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9710', '8132103', 'Cửa Cạn', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('9711', '8150101', 'Trà Nóc', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('9715', '8150513', 'Thới An', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('9716', '8150723', 'Đông Phú', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('9717', '8170109', 'Phường 5', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('9718', '8170115', 'Long Đức', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('9719', '8170707', 'An Phú Tân', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('9720', '8171305', 'Tập Sơn', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9721', '8171327', 'Tân Hiệp', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('9722', '8171505', 'Long Hữu', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('9723', '8190119', '10', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9724', '8190309', 'Kế An', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9725', '8190321', 'An Lạc Tây', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9726', '8190703', 'Phú Mỹ', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9727', '8190723', 'Thuận Hòa', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9728', '8190919', 'Ngọc Đông', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9729', '8210105', '5', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('9730', '8210107', '7', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('9731', '8210513', 'Minh Diệu', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9732', '8210525', 'Vĩnh Thịnh', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9733', '8210713', 'Phong Thạnh', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9734', '8210727', 'An Phúc', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9735', '8230103', '2', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9736', '8230503', 'Nguyễn Phích', '', '612', '0');
INSERT INTO `dm_xa` VALUES ('9737', '8230507', 'Khánh Tiến', '', '612', '0');
INSERT INTO `dm_xa` VALUES ('9738', '8230917', 'Phú Tân', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9739', '8231113', 'Quách Phẩm', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9740', '8231119', 'Thanh Tùng', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9741', '8231309', 'Hàng Vịnh', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('9742', '7150119', 'Đức Long', '', '493', '0');
INSERT INTO `dm_xa` VALUES ('9743', '7150701', 'Ma Lâm', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9744', '7150715', 'Hàm Đức', '', '496', '0');
INSERT INTO `dm_xa` VALUES ('9745', '7151123', 'Đức Phú', '', '498', '0');
INSERT INTO `dm_xa` VALUES ('9746', '7151313', 'Tân Hà', '', '499', '0');
INSERT INTO `dm_xa` VALUES ('9747', '7151513', 'Nam Chính', '', '500', '0');
INSERT INTO `dm_xa` VALUES ('9748', '7151701', 'Ngũ Phụng', '', '501', '0');
INSERT INTO `dm_xa` VALUES ('9749', '7170113', '7', '', '502', '0');
INSERT INTO `dm_xa` VALUES ('9750', '7170519', 'Suối Rao', '', '504', '0');
INSERT INTO `dm_xa` VALUES ('9751', '8010115', 'Nhơn Thạnh Trung', '', '509', '0');
INSERT INTO `dm_xa` VALUES ('9752', '8010911', 'Nhơn Ninh', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9753', '8010925', 'Nhơn Hoà', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9754', '8011311', 'Bình Thành', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('9755', '8011317', 'Bình Hòa Nam', '', '515', '0');
INSERT INTO `dm_xa` VALUES ('9756', '8011507', 'Lộc Giang', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9757', '8011525', 'Đức Lập Thượng', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9758', '8011915', 'Tân Thành', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('9759', '8011917', 'Bình An', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('9760', '8012105', 'Hòa Phú', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9761', '8012125', 'Thanh Vĩnh Đông', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9762', '8012529', 'Phước Đông', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9763', '8030101', '1', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9764', '8030301', '1', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('9765', '8030901', 'Thị trấn Tràm Chim', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9766', '8030903', 'An Hòa', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9767', '8031723', 'Hội An Đông', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9768', '8031913', 'Tân Thành', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('9769', '8050521', 'Vĩnh Trường', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9770', '8050701', 'Thị trấn Tân Châu', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9771', '8050715', 'Châu Phong', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9772', '8050719', 'Lê Chánh', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9773', '8050901', 'Thị trấn Phú Mỹ', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9774', '8051105', 'Mỹ Đức', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9775', '8051111', 'Vĩnh Thạnh Trung', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9776', '8051119', 'Bình Thủy', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9777', '8051513', 'Lương Phi', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9778', '8051515', 'Lương An Trà', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9779', '8051719', 'Nhơn Mỹ', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9780', '8051917', 'Hòa Bình Thạnh', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9781', '8070113', '8', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9782', '8070307', '1', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('9783', '8070701', 'Thị trấn Tân Hiệp', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9784', '8070723', 'Long Định', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9785', '8070903', 'Thạnh Lộc', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9786', '8071115', 'Thanh Bình', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9787', '8071309', 'Hậu Mỹ Trinh', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9788', '8071503', 'Đồng Sơn', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9789', '8071701', 'Thị trấn Tân Hoà', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9790', '8090117', 'Tân Ngãi', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9791', '8090307', 'Bình Hòa Phước', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9792', '8090501', 'Thị trấn Cái Nhum', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9793', '8090503', 'Mỹ An', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9794', '8090729', 'Tân Bình', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9795', '8090911', 'Hoà Lộc', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('9796', '8091105', 'Hòa Bình', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('9797', '8091125', 'Lục Sỹ Thành', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('9798', '8091337', 'Hiếu Thành', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9799', '8091339', 'Hiếu Nghĩa', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9800', '8110323', 'An Hiệp', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9801', '8110339', 'Qưới Sơn', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9802', '8110503', 'Phú Phụng', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9803', '8110919', 'Long Mỹ', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9804', '8110929', 'Bình Hoà', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9805', '8111307', 'Mỹ Chánh', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9806', '8111311', 'Mỹ Thạnh', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9807', '8111329', 'Phước Tuy', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9808', '8111343', 'An Hòa Tây', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9809', '8111501', 'Thị trấn Thạnh Phú', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9810', '8130103', 'Vĩnh Thanh', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('9811', '8130705', 'Tân Hiệp B', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('9812', '8130911', 'Minh Hòa', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('9813', '8131111', 'Bàn Tân Định', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('9814', '8131513', 'Nam Thái A', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('9815', '8131703', 'Thuận Hoà', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('9817', '8150517', 'Trường Lạc', '', '585', '0');
INSERT INTO `dm_xa` VALUES ('9819', '8150903', 'Thị trấn Cờ đỏ', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('9820', '8170305', 'An Trường', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('9821', '8170321', 'Đức Mỹ', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('9822', '8170513', 'Hòa Thuận', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9823', '8170711', 'Phong Phú', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('9824', '8171107', 'Mỹ Hòa', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9825', '8171511', 'Trường Long Hòa', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('9826', '8190109', '5', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('9827', '8190301', 'Thị trấn Kế Sách', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9828', '8190311', 'Kế Thành', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9829', '8190511', 'Đại Ân 2', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9830', '8190519', 'Đại Ngãi', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9831', '8190531', 'Liêu Tú', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9832', '8191111', 'Thạnh Trị', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9833', '8191305', 'Vĩnh Tân', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('9834', '8210113', 'Hiệp Thành', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('9835', '8210303', 'Thị trấn Ngan Dừa', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('9836', '8210311', 'Vĩnh Lộc', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('9837', '8210517', 'Long Thạnh', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9838', '8210709', 'Phong Tân', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9839', '8210729', 'Định Thành', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9840', '8230101', '1', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9841', '8230919', 'Tân Hưng Đông', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9842', '8230925', 'Việt Khái', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('9843', '8231103', 'Tân Thuận', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9844', '7171115', 'Phước Hải', '', '507', '0');
INSERT INTO `dm_xa` VALUES ('9845', '8010509', 'Thái Bình Trung', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('9846', '8011103', 'Thủy Đông', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('9847', '8011111', 'Thạnh Phước', '', '514', '0');
INSERT INTO `dm_xa` VALUES ('9848', '8011511', 'An Ninh Tây', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9849', '8011523', 'Tân Mỹ', '', '516', '0');
INSERT INTO `dm_xa` VALUES ('9850', '8011729', 'Tân Hòa', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9851', '8012121', 'An Lục Long', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9852', '8012733', 'Tân Tập', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9853', '8030501', 'Thị trấn Sa Rài', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('9854', '8030517', 'Tân Công Chí', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('9855', '8030701', 'Thị trấn Hồng Ngự', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9856', '8030711', 'Long Thuận', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9857', '8030719', 'Thường Lạc', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9858', '8030723', 'Thường Thới Hậu B', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9859', '8031101', 'Thị trấn Thanh Bình', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('9860', '8031515', 'Mỹ Hội', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('9861', '8031917', 'Vĩnh Thới', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('9862', '8032109', 'An Hiệp', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('9863', '8050117', 'Mỹ Thới', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9864', '8050525', 'Đa Phước', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('9865', '8050913', 'Phú Thạnh', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9866', '8051125', 'Bình Chánh', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('9867', '8051321', 'Tân Lợi', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('9868', '8051519', 'Núi Tô', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('9869', '8051717', 'Mỹ Luông', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('9870', '8051915', 'Vĩnh An', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9871', '8051923', 'Tân Phú', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('9872', '8052113', 'Định Mỹ', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('9873', '8070109', '1', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9874', '8070117', 'Đạo Thạnh', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9875', '8070119', 'Trung An', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9876', '8070313', 'Long Chánh', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('9877', '8070503', 'Tân Hòa Đông', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9878', '8070507', 'Thạnh Mỹ', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9879', '8070523', 'Tân Lập 2', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9880', '8070743', 'Song Thuận', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9881', '8071111', 'Phú Kiết', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9882', '8071301', 'Thị trấn Cái Bè', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9883', '8071311', 'Hậu Mỹ Phú', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9884', '8071323', 'Mỹ Lợi A', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9885', '8071329', 'Mỹ Đức Đông', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9886', '8071333', 'Đông Hòa Hiệp', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9887', '8071343', 'An Thái Trung', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9888', '8071517', 'Thạnh Nhựt', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9889', '8071521', 'Bình Tân', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('9890', '8071713', 'Tân Tây', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9891', '8071723', 'Tân Điền', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9892', '8090111', '8', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9893', '8090309', 'An Bình', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('9894', '8090505', 'Long Mỹ', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9895', '8090521', 'Tân Long', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9896', '8090703', 'Nguyễn Văn Thảnh', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9897', '8090705', 'Tân Thành', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9898', '8090707', 'Thành Trung', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9899', '8091113', 'Thuận Thới', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('9900', '8091325', 'Trung Thành', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9901', '8110113', '7', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9902', '8110127', 'Mỹ Thạnh An', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('9903', '8110703', 'Thanh Tân', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9904', '8110711', 'Tân Thành Bình', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9905', '8110721', 'Hòa Lộc', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9906', '8110743', 'An Định', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9907', '8110903', 'Phong Nẫm', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('9908', '8111123', 'Định Trung', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('9909', '8111327', 'Phú Ngãi', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9910', '8111345', 'An Thủy', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('9911', '8111519', 'An Thạnh', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9912', '8111523', 'An Điền', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('9913', '8130903', 'Mong Thọ A', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('9914', '8130905', 'Mong Thọ B', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('9915', '8131509', 'Hưng Yên', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('9916', '8131517', 'Đông Yên', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('9917', '8131709', 'Đông Thạnh', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('9918', '8131717', 'Vân Khánh', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('9919', '8131901', 'Thị trấn Vĩnh Thuận', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('9921', '8150919', 'Đông Hiệp', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('9923', '8170311', 'Tân Bình', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('9924', '8170503', 'Đa Lộc', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9925', '8170517', 'Phước Hảo', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9926', '8170523', 'Long Hòa', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('9927', '8170913', 'Hùng Hòa', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('9928', '8171101', 'Thị trấn Cầu Ngang', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9929', '8171109', 'Vĩnh Kim', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9930', '8171117', 'Long Sơn', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9931', '8171119', 'Nhị Trường', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('9932', '8190317', 'An Lạc Thôn', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('9933', '8190527', 'Phú Hữu', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('9934', '8190709', 'Thuận Hưng', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('9935', '8190915', 'Đại Tâm', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9936', '8190917', 'Ngọc Tố', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9937', '8190921', 'Hòa Tú 1', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('9938', '8191115', 'Châu Hưng', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('9939', '8210301', 'Thị trấn Phước Long', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('9940', '8210503', 'Vĩnh Hưng', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9941', '8210519', 'Vĩnh Mỹ B', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('9942', '8210705', 'Thị trấn Gành Hào', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('9943', '8230115', '9', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('9944', '8230713', 'Trần Hợi', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('9945', '8231109', 'Tạ An Khương', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('9946', '8231301', 'Thị trấn Ngọc Hiển', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('9947', '8231317', 'Viên An', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('9948', '8010519', 'Vĩnh Thuận', '', '511', '0');
INSERT INTO `dm_xa` VALUES ('9949', '8010719', 'Bình Tân', '', '512', '0');
INSERT INTO `dm_xa` VALUES ('9950', '8010907', 'Hậu Thạnh Đông', '', '513', '0');
INSERT INTO `dm_xa` VALUES ('9951', '8011711', 'Lương Hòa', '', '517', '0');
INSERT INTO `dm_xa` VALUES ('9952', '8011905', 'Long Thuận', '', '518', '0');
INSERT INTO `dm_xa` VALUES ('9953', '8012107', 'Vĩnh Công', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9954', '8012123', 'Thuận Mỹ', '', '519', '0');
INSERT INTO `dm_xa` VALUES ('9955', '8012531', 'Long Hựu Tây', '', '521', '0');
INSERT INTO `dm_xa` VALUES ('9956', '8012713', 'Thuận Thành', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9957', '8012717', 'Tân Kim', '', '522', '0');
INSERT INTO `dm_xa` VALUES ('9958', '8030115', 'Mỹ Tân', '', '523', '0');
INSERT INTO `dm_xa` VALUES ('9959', '8030703', 'Long Khánh A', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9960', '8030717', 'Thường Thới Tiền', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9961', '8030721', 'Thường Thới Hậu A', '', '526', '0');
INSERT INTO `dm_xa` VALUES ('9962', '8030919', 'Phú Đức', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9963', '8030923', 'Hoà Bình', '', '527', '0');
INSERT INTO `dm_xa` VALUES ('9964', '8031705', 'Định An', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('9965', '8031909', 'Long Thắng', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('9966', '8050107', 'Bình Đức', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('9967', '8050305', 'Vĩnh Ngươn', '', '535', '0');
INSERT INTO `dm_xa` VALUES ('9968', '8050717', 'Phú Vĩnh', '', '537', '0');
INSERT INTO `dm_xa` VALUES ('9969', '8050909', 'Phú Lâm', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9970', '8050927', 'Phú Thọ', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('9971', '8051325', 'Tân Lập', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('9972', '8070123', 'Tân Mỹ Chánh', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('9973', '8070311', 'Long Thuận', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('9974', '8070511', 'Phú Mỹ', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('9975', '8070713', 'Tam Hiệp', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9976', '8070719', 'Dưỡng Điềm', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('9977', '8070905', 'Mỹ Thành Bắc', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9978', '8070919', 'Tân Bình', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9979', '8070937', 'Cẩm Sơn', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9980', '8070941', 'Mỹ Long', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9981', '8070953', 'Tam Bình', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('9982', '8071131', 'An Thạnh Thủy', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('9983', '8071337', 'Tân Hưng', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('9984', '8071703', 'Bình Đông', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9985', '8071727', 'Phước Trung', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('9986', '8090105', '3', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9987', '8090121', 'Tân Hội', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('9988', '8090509', 'Bình Phước', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('9989', '8090709', 'Tân Hưng', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('9990', '8091121', 'Tân Mỹ', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('9991', '8091329', 'Trung Nghĩa', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('9992', '8110311', 'Tân Phú', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('9993', '8110505', 'Vĩnh Bình', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9994', '8110507', 'Sơn Định', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('9995', '8110719', 'Tân Bình', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9996', '8110737', 'Thành Thới B', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9997', '8110745', 'Tân Trung', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9998', '8110753', 'Minh Đức', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('9999', '8110901', 'Thị trấn Giồng Trôm', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10000', '8110911', 'Thuận Điền', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10001', '8110927', 'Châu Bình', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10002', '8110931', 'Bình Thành', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10003', '8111315', 'An Ngãi Trung', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('10004', '8111515', 'Hòa Lợi', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('10005', '8130311', 'Mỹ Đức', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('10006', '8130319', 'Dương Hòa', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('10007', '8131315', 'Vĩnh Phước A', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('10008', '8131511', 'Nam Thái', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('10009', '8131711', 'Đông Hưng', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('10010', '8131713', 'Đông Hưng A', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('10011', '8131909', 'Minh Thuận', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('10012', '8131913', 'Tân Thuận', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('10013', '8132105', 'Gành Dầu', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('10014', '8150103', 'Bình Thủy', '', '582', '0');
INSERT INTO `dm_xa` VALUES ('10019', '8150727', 'Cái Khế', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('10020', '8150909', 'Đông Thắng', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10022', '8151301', 'Thị trấn Long Mỹ', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('10023', '8170501', 'Thị trấn Châu Thành', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('10024', '8170709', 'Ninh Thới', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('10025', '8171111', 'Kim Hòa', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10026', '8171309', 'Lưu Nghiệp Anh', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10027', '8171311', 'Ngãi Xuyên', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10028', '8171315', 'Hàm Giang', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10029', '8171509', 'Dân Thành', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10030', '8190507', 'Tân Hưng', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('10031', '8190711', 'Mỹ Thuận', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10032', '8190913', 'Thạnh Phú', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('10033', '8191109', 'Lâm Kiết', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10034', '8191125', 'Vĩnh Lợi', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10035', '8210313', 'Ninh Thạnh Lợi', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10036', '8210321', 'Hưng Phú', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10037', '8210325', 'Phong Thạnh Nam', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10038', '8230107', '5', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('10039', '8230119', 'Tân Thành', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('10040', '8230123', 'Định Bình', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('10041', '8230705', 'Khánh Bình Đông', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('10042', '8230707', 'Khánh Bình', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('10043', '8230717', 'Khánh Hải', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('10044', '8231115', 'Tân Tiến', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('10045', '8231319', 'Đất Mũi', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('10046', '8030315', 'Tân Quy Tây', '', '524', '0');
INSERT INTO `dm_xa` VALUES ('10047', '8030507', 'Thông Bình', '', '525', '0');
INSERT INTO `dm_xa` VALUES ('10048', '8031103', 'Bình Tấn', '', '528', '0');
INSERT INTO `dm_xa` VALUES ('10049', '8031507', 'Phương Trà', '', '530', '0');
INSERT INTO `dm_xa` VALUES ('10050', '8031703', 'Bình Thành', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('10051', '8031713', 'Tân Khánh Trung', '', '531', '0');
INSERT INTO `dm_xa` VALUES ('10052', '8031919', 'Tân Hòa', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('10053', '8050103', 'Mỹ Long', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10054', '8050905', 'Long Sơn', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('10055', '8050917', 'Phú Thành', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('10056', '8050923', 'Hiệp Xương', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('10057', '8051113', 'Bình Long', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('10058', '8051121', 'Đào Hữu Cảnh', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('10059', '8051301', 'Thị trấn Nhà Bàng', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('10060', '8051503', 'Lạc Quới', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('10061', '8051703', 'Kiến An', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10062', '8051715', 'Mỹ Hiệp', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10063', '8051731', 'Hòa Bình', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10064', '8051733', 'Hòa An', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10065', '8051905', 'Cần Đăng', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('10066', '8052103', 'Tây Phú', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('10067', '8052109', 'Phú Hòa', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('10068', '8070301', '3', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('10069', '8070727', 'Long An', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10070', '8070731', 'Bình Trưng', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10071', '8070741', 'Bình Đức', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10072', '8070749', 'Thới Sơn', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10073', '8070945', 'Hiệp Đức', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('10074', '8071137', 'Bình Ninh', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('10075', '8071511', 'Bình Nhì', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('10076', '8071525', 'Long Bình', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('10077', '8090101', '1', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('10078', '8090517', 'An Phước', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('10079', '8090907', 'Hòa Hiệp', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('10080', '8090909', 'Hậu Lộc', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('10081', '8090919', 'Song Phú', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('10082', '8091109', 'Thới Hòa', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('10083', '8091117', 'Vĩnh Xuân', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('10084', '8091333', 'Hiếu Nhơn', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('10085', '8110103', '2', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('10086', '8110109', '5', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('10087', '8110325', 'Sơn Hòa', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10088', '8110329', 'Tam Phước', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10089', '8110341', 'Giao Long', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10090', '8110701', 'Thị trấn Mỏ Cầy', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10091', '8110709', 'Tân Phú Tây', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10092', '8110723', 'Định Thủy', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10093', '8110735', 'An Thạnh', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10094', '8110915', 'Phước Long', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10095', '8110917', 'Hưng Phong', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10096', '8111101', 'Thị trấn Bình Đại', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10097', '8111111', 'Châu Hưng', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10098', '8111127', 'Bình Thới', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10099', '8111321', 'An Hiệp', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('10100', '8131319', 'Vĩnh Tuy', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('10101', '8131515', 'Đông Thái', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('10102', '8132111', 'Dương Tơ', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('10104', '8150901', 'Thị trấn Phụng Hiệp', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10106', '8151305', 'Long Bình', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('10107', '8170303', 'Mỹ Cẩm', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10108', '8170509', 'Song Lộc', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('10109', '8171503', 'Long Toàn', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10110', '8171513', 'Ngũ Lạc', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10111', '8190103', '2', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('10112', '8190315', 'Phong Nẫm', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('10113', '8190503', 'Long Phú', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('10114', '8190701', 'Thị trấn Huỳnh Hữu Nghĩa', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10115', '8190707', 'Hưng Phú', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10116', '8190731', 'An Ninh', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10117', '8210505', 'Châu Hưng', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('10118', '8230311', 'Thới Bình', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('10119', '8230313', 'Tân Lộc', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('10120', '8230505', 'Khánh Hòa', '', '612', '0');
INSERT INTO `dm_xa` VALUES ('10121', '8230509', 'Khánh Lâm', '', '612', '0');
INSERT INTO `dm_xa` VALUES ('10122', '8230921', 'Tân Hưng Tây', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('10123', '8031903', 'Hòa Long', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('10124', '8031921', 'Định Hòa', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('10125', '8050523', 'Vĩnh Hội Đông', '', '536', '0');
INSERT INTO `dm_xa` VALUES ('10126', '8050915', 'Hoà Lạc', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('10127', '8051117', 'Bình Mỹ', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('10128', '8051501', 'Thị trấn Tri Tôn', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('10129', '8051701', 'Thị trấn Chợ Mới', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10130', '8051729', 'Hội An', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10131', '8070111', '2', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10132', '8070315', 'Long Hòa', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('10133', '8070525', 'Phước Lập', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('10134', '8070715', 'Điềm Hy', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10135', '8070745', 'Kim Sơn', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10136', '8070949', 'Hội Xuân', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('10137', '8071515', 'Thạnh Trị', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('10138', '8071731', 'Phú Đông', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('10139', '8090113', '9', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('10140', '8090313', 'Tân Hạnh', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('10141', '8090931', 'Ngãi Tứ', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('10142', '8091321', 'Trung Thành Đông', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('10143', '8110119', 'Sơn Đông', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('10144', '8110315', 'Tiên Thủy', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10145', '8110337', 'An Phước', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10146', '8110705', 'Thạnh Ngãi', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10147', '8111121', 'Lộc Thuận', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10148', '8111137', 'Thừa Đức', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10149', '8111313', 'An Phú Trung', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('10150', '8111333', 'Bảo Thuận', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('10151', '8111521', 'An Thuận', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('10152', '8130107', 'Vĩnh Lạc', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('10153', '8130501', 'Thị trấn Hòn Đất', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('10154', '8130511', 'Sơn Kiên', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('10155', '8131123', 'Vĩnh Thạnh', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('10156', '8131125', 'Hòa Thuận', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('10157', '8131305', 'Định Hòa', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('10158', '8131311', 'Thủy Liểu', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('10159', '8131317', 'Vĩnh Phước B', '', '575', '0');
INSERT INTO `dm_xa` VALUES ('10160', '8131501', 'Thị trấn Thứ Ba', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('10162', '8150315', 'Trung Nhất', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10163', '8150325', 'Thuận Hưng', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10164', '8150717', 'Tân Phú Thạnh', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('10165', '8150725', 'Phú Hữu', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('10166', '8150923', 'Phương Phú', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10167', '8151303', 'Vị Thắng', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('10168', '8170313', 'Bình Phú', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10169', '8170917', 'Ngãi Hùng', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('10170', '8171501', 'Thị trấn Duyên Hải', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10171', '8190107', '4', '', '598', '0');
INSERT INTO `dm_xa` VALUES ('10172', '8190533', 'Lịch Hội Thượng', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('10173', '8190715', 'Long Hưng', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10174', '8190717', 'Hồ Đắc Kiện', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10175', '8190721', 'Thiện Mỹ', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10176', '8190727', 'Mỹ Hương', '', '601', '0');
INSERT INTO `dm_xa` VALUES ('10177', '8190905', 'Viên An', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('10178', '8190923', 'Hòa Tú II', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('10179', '8190925', 'Gia Hòa 1', '', '602', '0');
INSERT INTO `dm_xa` VALUES ('10180', '8191119', 'Vĩnh Biên', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10181', '8191319', 'Vĩnh Hải', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('10182', '8210109', '8', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('10183', '8210111', 'Thuận Hòa', '', '605', '0');
INSERT INTO `dm_xa` VALUES ('10184', '8210319', 'Phước Long', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10185', '8210523', 'Vĩnh Mỹ A', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('10186', '8210701', 'Thị trấn Giá Rai', '', '608', '0');
INSERT INTO `dm_xa` VALUES ('10187', '8230111', '7', '', '610', '0');
INSERT INTO `dm_xa` VALUES ('10188', '8230915', 'Tân Hưng', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('10189', '8231307', 'Tam Giang', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('10190', '8031905', 'Hòa Thành', '', '532', '0');
INSERT INTO `dm_xa` VALUES ('10191', '8032107', 'Tân Bình', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('10192', '8032113', 'An Nhơn', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('10193', '8032119', 'Hòa Tân', '', '533', '0');
INSERT INTO `dm_xa` VALUES ('10194', '8050115', 'Mỹ Hòa', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10195', '8050925', 'Phú Bình', '', '538', '0');
INSERT INTO `dm_xa` VALUES ('10196', '8051123', 'Bình Phú', '', '539', '0');
INSERT INTO `dm_xa` VALUES ('10197', '8051305', 'Nhơn Hưng', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('10198', '8051307', 'An Phú', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('10199', '8051309', 'Thới Sơn', '', '540', '0');
INSERT INTO `dm_xa` VALUES ('10200', '8051517', 'Tà Đảnh', '', '541', '0');
INSERT INTO `dm_xa` VALUES ('10201', '8051903', 'An Hòa', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('10202', '8052105', 'Vĩnh Phú', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('10203', '8052119', 'Vọng Đông', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('10204', '8052125', 'Vọng Thê', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('10205', '8070115', '6', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10206', '8070125', 'Tân Long', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10207', '8070513', 'Tân Hòa Thành', '', '547', '0');
INSERT INTO `dm_xa` VALUES ('10208', '8070729', 'Long Hưng', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10209', '8070739', 'Vĩnh Kim', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10210', '8070909', 'Mỹ Phước Tây', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('10211', '8071109', 'Tân Bình Thạnh', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('10212', '8071127', 'Bình Phan', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('10213', '8071133', 'Xuân Đông', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('10214', '8071347', 'Hòa Hưng', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('10215', '8071531', 'Phú Thạnh', '', '552', '0');
INSERT INTO `dm_xa` VALUES ('10216', '8071725', 'Bình Nghị', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('10217', '8090511', 'Nhơn Phú', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('10218', '8090515', 'Chánh Hội', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('10219', '8090525', 'Tân Long Hội', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('10220', '8090733', 'Mỹ Hòa', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('10221', '8091103', 'Xuân Hiệp', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('10222', '8091119', 'Thiện Mỹ', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('10223', '8110105', '3', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('10224', '8110123', 'Phú Hưng', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('10225', '8110125', 'Nhơn Thạnh', '', '561', '0');
INSERT INTO `dm_xa` VALUES ('10226', '8110301', 'Thị trấn Châu Thành', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10227', '8110321', 'Tường Đa', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10228', '8110343', 'Giao Hòa', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10229', '8110729', 'Bình Khánh Đông', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10230', '8110913', 'Sơn Phú', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10231', '8111107', 'Long Hòa', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10232', '8111113', 'Vang Quới Tây', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10233', '8111505', 'Đại Điền', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('10234', '8130113', 'Vĩnh Thông', '', '569', '0');
INSERT INTO `dm_xa` VALUES ('10235', '8130315', 'Thuận Yên', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('10236', '8130503', 'Bình Sơn', '', '571', '0');
INSERT INTO `dm_xa` VALUES ('10237', '8130909', 'Vĩnh Hòa Hiệp', '', '573', '0');
INSERT INTO `dm_xa` VALUES ('10238', '8131105', 'Thạnh Phước', '', '574', '0');
INSERT INTO `dm_xa` VALUES ('10239', '8131519', 'Thạnh Yên', '', '576', '0');
INSERT INTO `dm_xa` VALUES ('10240', '8131707', 'An Minh Bắc', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('10241', '8131911', 'Vĩnh Thuận', '', '578', '0');
INSERT INTO `dm_xa` VALUES ('10242', '8150313', 'Tân Lộc', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10243', '8150905', 'Thới Hưng', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10245', '8151113', 'Trường Long', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10247', '8151313', 'Vĩnh Thuận Đông', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('10248', '8170101', 'Phường 1', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('10249', '8170105', 'Phường 3', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('10250', '8170319', 'Nhị Long', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10251', '8170717', 'Thông Hòa', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('10252', '8170909', 'Hiếu Trung', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('10253', '8171115', 'Thuận Hòa', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10254', '8171303', 'Phước Hưng', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10255', '8171323', 'Ngọc Biên', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10256', '8190501', 'Thị trấn Long Phú', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('10257', '8190515', 'Trường Khánh', '', '600', '0');
INSERT INTO `dm_xa` VALUES ('10258', '8191105', 'Vĩnh Quới', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10259', '8191127', 'Tuân Tức', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10260', '8210521', 'Vĩnh Hậu', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('10261', '8230719', 'Phong Lạc', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('10262', '8231311', 'Đất Mới', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('10263', '8051707', 'Long Điền A', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10264', '8051709', 'Tấn Mỹ', '', '542', '0');
INSERT INTO `dm_xa` VALUES ('10265', '8051909', 'Bình Thạnh', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('10266', '8051913', 'Bình Hòa', '', '543', '0');
INSERT INTO `dm_xa` VALUES ('10267', '8052107', 'Vĩnh Trạch', '', '544', '0');
INSERT INTO `dm_xa` VALUES ('10268', '8070747', 'Phú Phong', '', '548', '0');
INSERT INTO `dm_xa` VALUES ('10269', '8070911', 'Mỹ Hạnh Đông', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('10270', '8070913', 'Mỹ Hạnh Trung', '', '549', '0');
INSERT INTO `dm_xa` VALUES ('10271', '8071121', 'Đăng Hưng Phước', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('10272', '8071125', 'Song Bình', '', '550', '0');
INSERT INTO `dm_xa` VALUES ('10273', '8071319', 'Hội Cư', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('10274', '8071709', 'Bình Xuân', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('10275', '8071721', 'Bình Ân', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('10276', '8090107', '4', '', '554', '0');
INSERT INTO `dm_xa` VALUES ('10277', '8090311', 'Thanh Đức', '', '555', '0');
INSERT INTO `dm_xa` VALUES ('10278', '8090519', 'Chánh An', '', '556', '0');
INSERT INTO `dm_xa` VALUES ('10279', '8090717', 'Thành Đông', '', '557', '0');
INSERT INTO `dm_xa` VALUES ('10280', '8090921', 'Mỹ Thạnh Trung', '', '558', '0');
INSERT INTO `dm_xa` VALUES ('10281', '8091111', 'Hựu Thành', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('10282', '8091127', 'Phú Thành', '', '559', '0');
INSERT INTO `dm_xa` VALUES ('10283', '8091303', 'Tân Quới Trung', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('10284', '8091305', 'Quới An', '', '560', '0');
INSERT INTO `dm_xa` VALUES ('10285', '8110319', 'Thành Triệu', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10286', '8110333', 'Hữu Định', '', '562', '0');
INSERT INTO `dm_xa` VALUES ('10287', '8110513', 'Long Thới', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('10288', '8110515', 'Vĩnh Thành', '', '563', '0');
INSERT INTO `dm_xa` VALUES ('10289', '8110717', 'Nhuận Phú Tân', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10290', '8110747', 'Ngãi Đăng', '', '564', '0');
INSERT INTO `dm_xa` VALUES ('10291', '8110923', 'Lương Quới', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10292', '8110937', 'Tân Lợi Thạnh', '', '565', '0');
INSERT INTO `dm_xa` VALUES ('10293', '8111135', 'Thạnh Phước', '', '566', '0');
INSERT INTO `dm_xa` VALUES ('10294', '8111309', 'Mỹ Nhơn', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('10295', '8111323', 'An Bình Tây', '', '567', '0');
INSERT INTO `dm_xa` VALUES ('10296', '8111513', 'Mỹ Hưng', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('10297', '8111525', 'An Quy', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('10298', '8111527', 'An Nhơn', '', '568', '0');
INSERT INTO `dm_xa` VALUES ('10299', '8130305', 'Vĩnh Điều', '', '570', '0');
INSERT INTO `dm_xa` VALUES ('10300', '8130703', 'Tân Hội', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('10301', '8130707', 'Thạnh Đông B', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('10302', '8130711', 'Tân Hiệp A', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('10303', '8130713', 'Thạnh Đông A', '', '572', '0');
INSERT INTO `dm_xa` VALUES ('10304', '8131701', 'Thị trấn Thứ Mười Một', '', '577', '0');
INSERT INTO `dm_xa` VALUES ('10305', '8132101', 'Thị trấn Dương Đông', '', '579', '0');
INSERT INTO `dm_xa` VALUES ('10308', '8150703', 'Nhơn ái', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('10309', '8150707', 'Trường Long Tây', '', '586', '0');
INSERT INTO `dm_xa` VALUES ('10310', '8150913', 'Thới Xuân', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10311', '8150921', 'Tân Phước Hưng', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10313', '8151317', 'Lương Tâm', '', '589', '0');
INSERT INTO `dm_xa` VALUES ('10314', '8170715', 'Tam Ngãi', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('10315', '8170905', 'Phú Cần', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('10316', '8190303', 'An Mỹ', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('10317', '8190305', 'Nhơn Mỹ', '', '599', '0');
INSERT INTO `dm_xa` VALUES ('10318', '8191113', 'Thạnh Tân', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10319', '8191121', 'Long Tân', '', '603', '0');
INSERT INTO `dm_xa` VALUES ('10320', '8191301', 'Thị trấn Vĩnh Châu', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('10321', '8191303', 'Lai Hòa', '', '604', '0');
INSERT INTO `dm_xa` VALUES ('10322', '8210305', 'Ninh Quới', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10323', '8210315', 'Vĩnh Phú Đông', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10324', '8210317', 'Vĩnh Phú Tây', '', '606', '0');
INSERT INTO `dm_xa` VALUES ('10325', '8210509', 'Hưng Hội', '', '607', '0');
INSERT INTO `dm_xa` VALUES ('10326', '8230307', 'Trí Phải', '', '611', '0');
INSERT INTO `dm_xa` VALUES ('10327', '8230709', 'Khánh Bình Tây', '', '613', '0');
INSERT INTO `dm_xa` VALUES ('10328', '8230901', 'Thị trấn Cái Nước', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('10329', '8230909', 'Hưng Mỹ', '', '614', '0');
INSERT INTO `dm_xa` VALUES ('10330', '8231107', 'Trần Phán', '', '615', '0');
INSERT INTO `dm_xa` VALUES ('10331', '8231313', 'Tân Ân', '', '616', '0');
INSERT INTO `dm_xa` VALUES ('10332', '5111501', 'Thị trấn Trường Sa', '', '390', '0');
INSERT INTO `dm_xa` VALUES ('10333', '5111502', 'Song Tử Tây', '', '390', '0');
INSERT INTO `dm_xa` VALUES ('10334', '5111503', 'Sinh Tồn', '', '390', '0');
INSERT INTO `dm_xa` VALUES ('10335', '5110151', 'Phước Long', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('10336', '5110153', 'Vĩnh Hòa', '', '383', '0');
INSERT INTO `dm_xa` VALUES ('10337', '8170116', 'Phường 9', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('10338', '8170301', 'Thị trấn Càng Long', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10339', '8170309', 'Tân An', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10342', '8170114', 'Phường 8', '', '590', '0');
INSERT INTO `dm_xa` VALUES ('10343', '8171328', 'Thị trấn Định An', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10344', '8171329', 'Hàm Tân', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10345', '8171330', 'Tân Sơn', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10346', '8171331', 'Kim Sơn', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10347', '8171332', 'Định An', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10348', '000001111111111111', 'xã test', '', '590', '1');
INSERT INTO `dm_xa` VALUES ('10349', '8170524', 'Lương Hòa A', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('10350', '8170525', 'Mỹ Chánh', '', '592', '0');
INSERT INTO `dm_xa` VALUES ('10351', '8150907', 'Trung Hưng', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10352', '8150917', 'Trung Thạnh', '', '587', '0');
INSERT INTO `dm_xa` VALUES ('10353', '8551101', 'Thị trấn Phong Điền', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10354', '855110', 'Giai Xuân', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10355', '8551111', 'Mỹ Khánh', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10356', '8551119', 'Nhơn Ái', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10357', '8551117', 'Nhơn Nghĩa', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10358', '8551109', 'Tân Thới', '', '588', '0');
INSERT INTO `dm_xa` VALUES ('10359', '8150321', 'Thạnh Hòa', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10360', '8150323', 'Tân Hưng', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10361', '8150317', 'Thuận An', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10362', '8150319', 'Trung Kiên', '', '584', '0');
INSERT INTO `dm_xa` VALUES ('10363', '2911', 'Phường 1', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10364', '2912', 'Phường 2', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10365', '2913', 'Phường 4', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10366', '2914', 'Phường 3', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10367', '2915', 'Phường 5', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10368', '2916', 'Phường 6', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10369', '2917', 'Phường 7', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10370', '2918', 'Hoả Lựu', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10371', '2910', 'Hoả Tiến', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10372', '2921', 'Tân Tiến', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10373', '2922', 'Vị Tân', '', '624', '0');
INSERT INTO `dm_xa` VALUES ('10374', '2923', 'Phường Hiệp Thành', '', '625', '0');
INSERT INTO `dm_xa` VALUES ('10375', '2924', 'Phường Lái Hiếu', '', '625', '0');
INSERT INTO `dm_xa` VALUES ('10376', '2925', 'Phường Ngã Bảy', '', '625', '0');
INSERT INTO `dm_xa` VALUES ('10377', '2926', 'Đại Thành', '', '625', '0');
INSERT INTO `dm_xa` VALUES ('10378', '2927', 'Hiệp Lợi', '', '625', '0');
INSERT INTO `dm_xa` VALUES ('10379', '2928', 'Tân Thành', '', '625', '0');
INSERT INTO `dm_xa` VALUES ('10380', '8170721', 'Hòa Tân', '', '593', '0');
INSERT INTO `dm_xa` VALUES ('10381', '58.124', 'CA Thị trấn Long Thành', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10383', '58.128', 'Xã An Trường A', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10384', '58.138', 'Đại Phúc', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10385', '58.185', 'Xã Nhị Long Phú', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10386', '58.139', 'Tân Hùng', '', '594', '0');
INSERT INTO `dm_xa` VALUES ('10387', '58.140', 'Thị trấn Mỹ Long', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10388', '58.141', 'An Trường A', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10389', '58.143', ' Đại Phúc', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10390', '58.144', 'Nhị Long Phú', '', '591', '0');
INSERT INTO `dm_xa` VALUES ('10391', '58.145', 'Thị trấn Long Thành', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10392', '58.150', 'Hiệp Mỹ Đông', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10393', '58.147', 'Mỹ Long Nam', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10394', '58.148', 'Mỹ Long Bắc', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10395', '58.149', 'Hiệp Mỹ Tây', '', '534', '0');
INSERT INTO `dm_xa` VALUES ('10397', '58.151', 'Hiệp Mỹ Đông', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10398', '58.152', 'Mỹ Long Nam', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10399', '58.153', 'Mỹ Long Bắc', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10400', '58.154', 'Hiệp Mỹ Tây', '', '595', '0');
INSERT INTO `dm_xa` VALUES ('10401', '1-3', 'Thành Lộc', '', '597', '0');
INSERT INTO `dm_xa` VALUES ('10402', '1', 'Long Hiệp', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10403', '01', 'Longt Hiệp', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10406', '101', 'Long Hiệp', '', '596', '0');
INSERT INTO `dm_xa` VALUES ('10407', '6030129', 'Tây Sơn', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10408', '6032201', 'Ia Mrơn', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10411', '6030130', 'IaKring', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10412', '6030131', 'Thắng Lợi', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10413', '6030132', 'Chi Lăng', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10414', '6030133', 'Phù Đổng', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10415', '6030134', 'Yên Thế', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10416', '6030135', 'Đống Đa', '', '398', '0');
INSERT INTO `dm_xa` VALUES ('10417', '6031122', 'Tây Sơn', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('10418', '6031124', 'An Phú', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('10419', '6031928', 'Ia Pal', '', '407', '0');
INSERT INTO `dm_xa` VALUES ('10420', '6031125', 'An Tân', '', '403', '0');
INSERT INTO `dm_xa` VALUES ('10421', '6032128', 'Phường Đoàn Kết', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('10422', '6032129', 'Phường Sông Bờ', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('10423', '6032130', 'Phường Hòa Bình', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('10424', '6032131', 'Phường Cheo Reo', '', '408', '0');
INSERT INTO `dm_xa` VALUES ('10425', '6031716', 'Bàu Cạn', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('10426', '6031718', 'Ia Drang', '', '406', '0');
INSERT INTO `dm_xa` VALUES ('10427', '6030401', 'Ia Rong', '', '634', '0');
INSERT INTO `dm_xa` VALUES ('10428', '6030402', 'Ia Le', '', '634', '0');
INSERT INTO `dm_xa` VALUES ('10429', '6030403', 'Ia Phang', '', '634', '0');
INSERT INTO `dm_xa` VALUES ('10430', '6030404', 'Nhơn Hòa', '', '634', '0');
INSERT INTO `dm_xa` VALUES ('10431', '6032701', 'Thị Trấn Phú Thiện', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10432', '6032705', 'Xã Chư A Thai', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10433', '6032709', 'Xã Ayun Hạ', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10434', '6032707', 'Xã Ia Ake', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10435', '6032703', 'Xã Ia Sol', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10436', '6032715', 'Xã Ia Piar', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10437', '6032717', 'Xã Ia Peng', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10438', '6032713', 'Xã Chrôh Pơnan', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10439', '6032711', 'Xã Ia Hiao', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10440', '6032179', 'Xã Ia Yeng', '', '636', '0');
INSERT INTO `dm_xa` VALUES ('10451', '6030547', 'Xã Đăk Djrăng', '', '400', '0');
INSERT INTO `dm_xa` VALUES ('10452', '6033101', 'Thị Trần Đăk Đoa', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10453', '6033103', 'Xã Hà Đông', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10454', '6033105', 'Xã Đăk Sơmei', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10455', '6033107', 'Xã Đăk Krong', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10456', '6033115', 'Xã Hải Yang', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10457', '6033113', 'Xã Kon Gang', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10458', '6033109', 'Xã Hà Bầu', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10459', '6033111', 'Xã Nam Yang', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10460', '6033121', 'Xã K\'Dang', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10461', '6033117', 'Xã H\'Neng', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10462', '6033119', 'Xã Tân Bình', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10463', '6033123', 'Xã Glar', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10464', '6033129', 'Xã A Dơk', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10465', '6033125', 'Xã Trang', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10466', '6033127', 'Xã HNol', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10467', '6033131', 'Xã Ia Pết', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10468', '6033133', 'Xã Ia Băng', '', '637', '0');
INSERT INTO `dm_xa` VALUES ('10469', '6032901', 'Xã PờTó', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10470', '6032903', 'Xã Chư Răng', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10471', '6032915', 'Xã Ia KDăm', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10472', '6032917', 'Xã Kim Tân', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10473', '6032909', 'Xã Chư Mố', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10474', '6032907', 'Xã Ia Tul', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10475', '6032911', 'Xã Ia Ma Rơn', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10476', '6032913', 'Xã Ia Broăi', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10477', '6032905', 'Xã Ia Trok', '', '632', '0');
INSERT INTO `dm_xa` VALUES ('10478', '8071349', 'An Cư', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('10479', '8071351', 'Mỹ Hội', '', '551', '0');
INSERT INTO `dm_xa` VALUES ('10480', '8070317', 'Phường 1', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10481', '8070319', 'Phường 2', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10482', '8070321', 'Phường 3', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10483', '8070323', 'Phường 4', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10484', '8070325', 'Phường 5', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10485', '8070327', 'Phường Nhị Mỹ', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10486', '8070329', 'Thanh Hòa', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10487', '8070331', 'Tân Phú', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10488', '8070333', 'Phú Quí', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10489', '8070335', 'Mỹ Hạnh Trung', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10490', '8070337', 'Mỹ Hạnh Đông', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10491', '8070339', 'Nhị Quí', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10492', '8070341', 'Tân Bình', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10493', '8070343', 'Tân Hội', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10494', '8070345', 'Mỹ Phước Tây', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10495', '8070347', 'Long Khánh', '', '638', '0');
INSERT INTO `dm_xa` VALUES ('10496', '8070127', 'Phường 9', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10497', '8070129', 'Phường 10', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10498', '8070131', 'Phước Thạnh', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10499', '8070133', 'Thới Sơn', '', '545', '0');
INSERT INTO `dm_xa` VALUES ('10500', '8071732', 'Tăng Hòa', '', '553', '0');
INSERT INTO `dm_xa` VALUES ('10506', '8070415', 'Phường 5', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('10507', '8070417', 'Bình Đông', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('10508', '8070419', 'Bình Xuân', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('10509', '8070421', 'Tân Trung', '', '546', '0');
INSERT INTO `dm_xa` VALUES ('10510', '8070423', 'Phú Thạnh', '', '639', '0');
INSERT INTO `dm_xa` VALUES ('10511', '8070425', 'Tân Thới', '', '639', '0');
INSERT INTO `dm_xa` VALUES ('10512', '8070427', 'Tân Phú', '', '639', '0');
INSERT INTO `dm_xa` VALUES ('10513', '8070429', 'Tân Thạnh', '', '639', '0');
INSERT INTO `dm_xa` VALUES ('10514', '8070431', 'Phú Tân', '', '639', '0');
INSERT INTO `dm_xa` VALUES ('10515', '8070433', 'Phú Đông', '', '639', '0');

-- ----------------------------
-- Table structure for ds_duongsu
-- ----------------------------
DROP TABLE IF EXISTS `ds_duongsu`;
CREATE TABLE `ds_duongsu` (
  `DuongSuID` int(11) NOT NULL AUTO_INCREMENT,
  `HoTen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `NamSinh` int(4) DEFAULT NULL,
  `LoaiGiayToID` int(11) DEFAULT NULL,
  `SoGiayTo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhThuongTruID` int(5) DEFAULT NULL,
  `HuyenThuongTruID` int(5) DEFAULT NULL,
  `XaThuongTruID` int(5) DEFAULT NULL,
  `SoNhaThuongTru` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiLienHe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenToChuc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDangKyKinhDoanhSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKyKinhDoanh` date DEFAULT NULL,
  `NoiCapGiayDangKyKinhDoanh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDienThoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChucVuNguoiDaiDien` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayUyQuyenSo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayUyQuyen` date DEFAULT NULL,
  `LoaiDuongSuID` tinyint(1) DEFAULT NULL,
  `NgayTao` date DEFAULT NULL,
  `NguoiTao` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  `TinhTrangID` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`DuongSuID`),
  KEY `LoaiGiayToID` (`LoaiGiayToID`),
  KEY `TinhThuongTruID` (`TinhThuongTruID`),
  KEY `HuyenThuongTruID` (`HuyenThuongTruID`),
  KEY `XaThuongTruID` (`XaThuongTruID`),
  KEY `LoaiDuongSuID` (`LoaiDuongSuID`),
  CONSTRAINT `ds_duongsu_ibfk_1` FOREIGN KEY (`LoaiGiayToID`) REFERENCES `dm_loaigiayto` (`LoaiGiayToID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ds_duongsu_ibfk_2` FOREIGN KEY (`TinhThuongTruID`) REFERENCES `dm_tinh` (`TinhID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ds_duongsu_ibfk_3` FOREIGN KEY (`HuyenThuongTruID`) REFERENCES `dm_huyen` (`HuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ds_duongsu_ibfk_4` FOREIGN KEY (`XaThuongTruID`) REFERENCES `dm_xa` (`XaID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ds_duongsu
-- ----------------------------

-- ----------------------------
-- Table structure for hd_camco
-- ----------------------------
DROP TABLE IF EXISTS `hd_camco`;
CREATE TABLE `hd_camco` (
  `HopDongCamCoID` int(11) NOT NULL AUTO_INCREMENT,
  `SoTienDamBao` double DEFAULT NULL,
  `GiaTriTaiSanCamCo` double DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `PhuongThucSuLyTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  PRIMARY KEY (`HopDongCamCoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_camco
-- ----------------------------

-- ----------------------------
-- Table structure for hd_chuyendoi
-- ----------------------------
DROP TABLE IF EXISTS `hd_chuyendoi`;
CREATE TABLE `hd_chuyendoi` (
  `HopDongChuyenDoiID` int(11) NOT NULL AUTO_INCREMENT,
  `GiaChuyenDoi` double DEFAULT NULL,
  `GiaChenhLech` double DEFAULT NULL,
  `GiaTriTaiSanA` double DEFAULT NULL,
  `GiaTriTaiSanB` double DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `BenTraChenhLech` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `NgayGiaoTaiSanA` date DEFAULT NULL,
  `NgayGiaoTaiSanB` date DEFAULT NULL,
  `TrangThietBiA` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrangThietBiB` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChoThueTuNgayBenA` date DEFAULT NULL,
  `ChoThueDenNgayBenA` date DEFAULT NULL,
  `ChoThuetuNgayBenB` date DEFAULT NULL,
  `ChoThueDenNgayBenB` date DEFAULT NULL,
  `ThoiHanThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CamKetKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongChuyenDoiID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_chuyendoi
-- ----------------------------

-- ----------------------------
-- Table structure for hd_chuyennhuong
-- ----------------------------
DROP TABLE IF EXISTS `hd_chuyennhuong`;
CREATE TABLE `hd_chuyennhuong` (
  `HopDongChuyenNhuongID` int(11) NOT NULL AUTO_INCREMENT,
  `GiaChuyenNhuong` double DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  PRIMARY KEY (`HopDongChuyenNhuongID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_chuyennhuong
-- ----------------------------

-- ----------------------------
-- Table structure for hd_dichuc
-- ----------------------------
DROP TABLE IF EXISTS `hd_dichuc`;
CREATE TABLE `hd_dichuc` (
  `HopDongDiChucID` int(11) NOT NULL AUTO_INCREMENT,
  `NoiDungDiChuc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`HopDongDiChucID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_dichuc
-- ----------------------------

-- ----------------------------
-- Table structure for hd_filedinhkemhopdong
-- ----------------------------
DROP TABLE IF EXISTS `hd_filedinhkemhopdong`;
CREATE TABLE `hd_filedinhkemhopdong` (
  `FileDinhKemID` int(11) NOT NULL AUTO_INCREMENT,
  `TenFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuongDan` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FileDinhKemID`),
  KEY `HopDongID` (`HopDongID`),
  CONSTRAINT `hd_filedinhkemhopdong_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_filedinhkemhopdong
-- ----------------------------

-- ----------------------------
-- Table structure for hd_gopvon
-- ----------------------------
DROP TABLE IF EXISTS `hd_gopvon`;
CREATE TABLE `hd_gopvon` (
  `HopDongGopVonID` int(11) NOT NULL AUTO_INCREMENT,
  `GiaGopVon` double(20,0) DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `MucDichGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucGopVon` date DEFAULT NULL,
  `GopVonTuNgay` date DEFAULT NULL,
  `LoiNhuanGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  PRIMARY KEY (`HopDongGopVonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_gopvon
-- ----------------------------

-- ----------------------------
-- Table structure for hd_hopdong
-- ----------------------------
DROP TABLE IF EXISTS `hd_hopdong`;
CREATE TABLE `hd_hopdong` (
  `HopDongID` int(11) NOT NULL AUTO_INCREMENT,
  `LoaiHopDongID` int(11) DEFAULT NULL,
  `LoaiHopDongChiTietID` int(11) DEFAULT '0',
  `HopDongTheChapID` int(11) DEFAULT '0',
  `HopDongChuyenNhuongID` int(11) DEFAULT '0',
  `HopDongTangChoID` int(11) DEFAULT '0',
  `HopDongMuaBanID` int(11) DEFAULT '0',
  `HopDongUyQuyenID` int(11) DEFAULT '0',
  `HopDongThuaKeID` int(11) DEFAULT '0',
  `HopDongThueID` int(11) DEFAULT '0',
  `HopDongGopVonID` int(11) DEFAULT '0',
  `HopDongCamCoID` int(11) DEFAULT '0',
  `HopDongDiChucID` int(11) DEFAULT '0',
  `HopDongChuyenDoiID` int(11) DEFAULT '0',
  `HopDongHuyBoID` int(11) DEFAULT '0',
  `HopDongSoanSanID` int(11) DEFAULT '0',
  `BenDangKyID` int(5) DEFAULT NULL,
  `BenChiuPhiID` int(5) DEFAULT NULL,
  `GiaoDichMotPhan` double DEFAULT NULL,
  `NguoiTaoHopDong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayTaoHopDong` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhiGiaoDich` double DEFAULT NULL,
  `TinhTrangID` int(5) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `HopDongID` (`HopDongID`),
  KEY `CamCoID` (`HopDongCamCoID`),
  KEY `ChuyenDoiID` (`HopDongChuyenDoiID`),
  KEY `ChuyenNhuongID` (`HopDongChuyenNhuongID`),
  KEY `DiChucID` (`HopDongDiChucID`),
  KEY `GopVonID` (`HopDongGopVonID`),
  KEY `HopDongSoanSan` (`HopDongSoanSanID`),
  KEY `HuyBoID` (`HopDongHuyBoID`),
  KEY `MuaBanID` (`HopDongMuaBanID`),
  KEY `TangChoID` (`HopDongTangChoID`),
  KEY `TheChapID` (`HopDongTheChapID`),
  KEY `ThuaKeID` (`HopDongThuaKeID`),
  KEY `ThueID` (`HopDongThueID`),
  KEY `UyQuyenID` (`HopDongUyQuyenID`),
  KEY `LoaiHopDongChiTietID` (`LoaiHopDongChiTietID`),
  KEY `LoaiHopDongID` (`LoaiHopDongID`),
  KEY `TinhTrangID` (`TinhTrangID`),
  KEY `BenDangKyID` (`BenDangKyID`),
  KEY `BenChiuPhiID` (`BenChiuPhiID`),
  CONSTRAINT `hd_hopdong_ibfk_1` FOREIGN KEY (`LoaiHopDongChiTietID`) REFERENCES `dm_loaihopdongchitiet` (`LoaiHopDongChiTietID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_10` FOREIGN KEY (`HopDongCamCoID`) REFERENCES `hd_camco` (`HopDongCamCoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_11` FOREIGN KEY (`HopDongDiChucID`) REFERENCES `hd_dichuc` (`HopDongDiChucID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_12` FOREIGN KEY (`HopDongChuyenDoiID`) REFERENCES `hd_chuyendoi` (`HopDongChuyenDoiID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_13` FOREIGN KEY (`HopDongHuyBoID`) REFERENCES `hd_huy` (`HopDongHuyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_14` FOREIGN KEY (`HopDongSoanSanID`) REFERENCES `hd_soansan` (`HopDongSoanSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_15` FOREIGN KEY (`LoaiHopDongID`) REFERENCES `dm_loaihopdong` (`LoaiHopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_16` FOREIGN KEY (`TinhTrangID`) REFERENCES `dm_tinhtrang` (`TinhTrangID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_17` FOREIGN KEY (`BenDangKyID`) REFERENCES `dm_loaiduongsu` (`LoaiDuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_18` FOREIGN KEY (`BenChiuPhiID`) REFERENCES `dm_loaiduongsu` (`LoaiDuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_19` FOREIGN KEY (`HopDongThuaKeID`) REFERENCES `hd_thuake` (`HopDongThuaKeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_2` FOREIGN KEY (`HopDongTheChapID`) REFERENCES `hd_thechap` (`HopDongTheChapID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_3` FOREIGN KEY (`HopDongChuyenNhuongID`) REFERENCES `hd_chuyennhuong` (`HopDongChuyenNhuongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_4` FOREIGN KEY (`HopDongTangChoID`) REFERENCES `hd_tangcho` (`HopDongTangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_5` FOREIGN KEY (`HopDongMuaBanID`) REFERENCES `hd_tangcho` (`HopDongTangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_6` FOREIGN KEY (`HopDongMuaBanID`) REFERENCES `hd_muaban` (`HopDongMuaBanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_7` FOREIGN KEY (`HopDongUyQuyenID`) REFERENCES `hd_uyquyen` (`HopDongUyQuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_9` FOREIGN KEY (`HopDongGopVonID`) REFERENCES `hd_gopvon` (`HopDongGopVonID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_hopdong
-- ----------------------------

-- ----------------------------
-- Table structure for hd_huy
-- ----------------------------
DROP TABLE IF EXISTS `hd_huy`;
CREATE TABLE `hd_huy` (
  `HopDongHuyID` int(11) NOT NULL AUTO_INCREMENT,
  `NoiDungHuy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HuyHopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongHuyID`),
  KEY `LoaiHD` (`NoiDungHuy`),
  KEY `HuyHopDongID` (`HuyHopDongID`),
  CONSTRAINT `hd_huy_ibfk_1` FOREIGN KEY (`HuyHopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_huy
-- ----------------------------

-- ----------------------------
-- Table structure for hd_muaban
-- ----------------------------
DROP TABLE IF EXISTS `hd_muaban`;
CREATE TABLE `hd_muaban` (
  `HopDongMuaBanID` int(11) NOT NULL AUTO_INCREMENT,
  `GiaMuaBan` double DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongMuaBanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_muaban
-- ----------------------------

-- ----------------------------
-- Table structure for hd_soansan
-- ----------------------------
DROP TABLE IF EXISTS `hd_soansan`;
CREATE TABLE `hd_soansan` (
  `HopDongSoanSanID` int(11) NOT NULL AUTO_INCREMENT,
  `TenHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `KhongChuyenQuyenSoHuu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HopDongSoanSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_soansan
-- ----------------------------

-- ----------------------------
-- Table structure for hd_tangcho
-- ----------------------------
DROP TABLE IF EXISTS `hd_tangcho`;
CREATE TABLE `hd_tangcho` (
  `HopDongTangChoID` int(11) NOT NULL AUTO_INCREMENT,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `GiaTriQuyenSDDatVaTSGanLienVoiDat` double DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `TrangThietBiChuYeu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToPhapLy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacCamKetKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DieuKienTangCho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongTangChoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_tangcho
-- ----------------------------

-- ----------------------------
-- Table structure for hd_thechap
-- ----------------------------
DROP TABLE IF EXISTS `hd_thechap`;
CREATE TABLE `hd_thechap` (
  `HopDongTheChapID` int(11) NOT NULL AUTO_INCREMENT,
  `SoTienDamBao` double DEFAULT NULL,
  `GiaTheChap` double DEFAULT NULL,
  `NgayThamDinh` date DEFAULT NULL,
  `PhuongThucSuLy` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `GiayCapPhepXayDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapPhep` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongTheChapID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_thechap
-- ----------------------------

-- ----------------------------
-- Table structure for hd_thuake
-- ----------------------------
DROP TABLE IF EXISTS `hd_thuake`;
CREATE TABLE `hd_thuake` (
  `HopDongThuaKeID` int(11) NOT NULL AUTO_INCREMENT,
  `NoiDungTuChoiDiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToCanCuDeThuaKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayChet` date DEFAULT NULL,
  `SoGiayChungTu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayChungTu` date DEFAULT NULL,
  `NoiCapGiayChungTu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongThuaKeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_thuake
-- ----------------------------

-- ----------------------------
-- Table structure for hd_thue
-- ----------------------------
DROP TABLE IF EXISTS `hd_thue`;
CREATE TABLE `hd_thue` (
  `HopDongThueID` int(11) NOT NULL AUTO_INCREMENT,
  `ThoiHanThue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayKetThucChoThue` date DEFAULT NULL,
  `ChoThueTuNgay` date DEFAULT NULL,
  `MucDichThue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaThue` double DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  PRIMARY KEY (`HopDongThueID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_thue
-- ----------------------------

-- ----------------------------
-- Table structure for hd_uyquyen
-- ----------------------------
DROP TABLE IF EXISTS `hd_uyquyen`;
CREATE TABLE `hd_uyquyen` (
  `HopDongUyQuyenID` int(11) NOT NULL AUTO_INCREMENT,
  `PhamViUyQuyen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanUyQuyen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucUyQuyen` date DEFAULT NULL,
  `UyQuyenTuNgay` date DEFAULT NULL,
  `ThuLaoPhaiTra` double DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongUyQuyenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hd_uyquyen
-- ----------------------------

-- ----------------------------
-- Table structure for hopdong_duongsu_a
-- ----------------------------
DROP TABLE IF EXISTS `hopdong_duongsu_a`;
CREATE TABLE `hopdong_duongsu_a` (
  `HopDongID` int(11) NOT NULL,
  `DuongSuAID` int(11) NOT NULL,
  `LaNguoiDaiDien` tinyint(1) DEFAULT NULL,
  `LaNguoiUyQuyen` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`,`DuongSuAID`),
  KEY `DuongSuAID` (`DuongSuAID`),
  CONSTRAINT `hopdong_duongsu_a_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hopdong_duongsu_a_ibfk_2` FOREIGN KEY (`DuongSuAID`) REFERENCES `ds_duongsu` (`DuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hopdong_duongsu_a
-- ----------------------------

-- ----------------------------
-- Table structure for hopdong_duongsu_b
-- ----------------------------
DROP TABLE IF EXISTS `hopdong_duongsu_b`;
CREATE TABLE `hopdong_duongsu_b` (
  `HopDongID` int(11) NOT NULL,
  `DuongSuBID` int(11) NOT NULL,
  `LaNguoiDaiDien` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`,`DuongSuBID`),
  KEY `DuongSuBID` (`DuongSuBID`),
  CONSTRAINT `hopdong_duongsu_b_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hopdong_duongsu_b_ibfk_2` FOREIGN KEY (`DuongSuBID`) REFERENCES `ds_duongsu` (`DuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hopdong_duongsu_b
-- ----------------------------

-- ----------------------------
-- Table structure for hopdong_duongsu_c
-- ----------------------------
DROP TABLE IF EXISTS `hopdong_duongsu_c`;
CREATE TABLE `hopdong_duongsu_c` (
  `HopDongID` int(11) NOT NULL,
  `DuongSuCID` int(11) NOT NULL,
  `LaNguoiDaiDien` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`,`DuongSuCID`),
  KEY `DuongSuCID` (`DuongSuCID`),
  CONSTRAINT `hopdong_duongsu_c_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hopdong_duongsu_c_ibfk_2` FOREIGN KEY (`DuongSuCID`) REFERENCES `ds_duongsu` (`DuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hopdong_duongsu_c
-- ----------------------------

-- ----------------------------
-- Table structure for hopdong_taisan_duongsu
-- ----------------------------
DROP TABLE IF EXISTS `hopdong_taisan_duongsu`;
CREATE TABLE `hopdong_taisan_duongsu` (
  `HopDongDuongSuTaiSanID` int(11) NOT NULL,
  `HopDongID` int(11) DEFAULT NULL,
  `DuongSuID` int(11) DEFAULT NULL,
  `TaiSanID` int(11) DEFAULT NULL,
  `ConSoHuu` tinyint(1) DEFAULT NULL,
  `LaNguoiDaiDien` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HopDongDuongSuTaiSanID`),
  KEY `HopDongID` (`HopDongID`),
  KEY `DuongSuID` (`DuongSuID`),
  KEY `TaiSanID` (`TaiSanID`),
  CONSTRAINT `hopdong_taisan_duongsu_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hopdong_taisan_duongsu_ibfk_2` FOREIGN KEY (`DuongSuID`) REFERENCES `ds_duongsu` (`DuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hopdong_taisan_duongsu_ibfk_3` FOREIGN KEY (`TaiSanID`) REFERENCES `ts_taisan` (`TaiSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hopdong_taisan_duongsu
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_functiondetails
-- ----------------------------
DROP TABLE IF EXISTS `tbl_functiondetails`;
CREATE TABLE `tbl_functiondetails` (
  `RoleID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NhomID` int(10) unsigned NOT NULL,
  `FuncID` int(11) unsigned NOT NULL,
  `IsView` tinyint(1) NOT NULL DEFAULT '0',
  `IsAdd` tinyint(1) NOT NULL DEFAULT '0',
  `IsDelete` tinyint(1) NOT NULL DEFAULT '0',
  `IsEdit` tinyint(1) NOT NULL DEFAULT '0',
  `Locked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`RoleID`),
  KEY `idNhom` (`NhomID`),
  KEY `FuncID` (`FuncID`),
  CONSTRAINT `tbl_functiondetails_ibfk_1` FOREIGN KEY (`NhomID`) REFERENCES `tbl_nhomtaikhoan` (`NhomID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `tbl_functiondetails_ibfk_2` FOREIGN KEY (`FuncID`) REFERENCES `tbl_functions` (`FuncID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_functiondetails
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_functions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_functions`;
CREATE TABLE `tbl_functions` (
  `FuncID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FuncMa` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `FuncTen` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` int(1) DEFAULT '0',
  `Ordinal` int(11) DEFAULT NULL,
  `Module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`FuncID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_functions
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_logdetails
-- ----------------------------
DROP TABLE IF EXISTS `tbl_logdetails`;
CREATE TABLE `tbl_logdetails` (
  `LogDetailID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `LogID` bigint(20) unsigned NOT NULL,
  `LogName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `NoiDungCu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDungMoi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LogDetailID`,`LogID`),
  KEY `LogID` (`LogID`),
  CONSTRAINT `tbl_logdetails_ibfk_1` FOREIGN KEY (`LogID`) REFERENCES `tbl_logs` (`LogID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_logdetails
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_logs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_logs`;
CREATE TABLE `tbl_logs` (
  `LogID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `TenDangNhap` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ActionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ActionContent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ActionTime` datetime DEFAULT NULL,
  `FormLamViec` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FormLamViecTen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  KEY `TenDangNhap` (`TenDangNhap`),
  CONSTRAINT `tbl_logs_ibfk_1` FOREIGN KEY (`TenDangNhap`) REFERENCES `tbl_taikhoan` (`TenDangNhap`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_logs
-- ----------------------------
INSERT INTO `tbl_logs` VALUES ('1', 'admin', 'View', 'Đăng nhập thành công', '2016-03-10 22:12:02', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('2', 'admin', 'View', 'Đăng nhập thành công', '2016-03-11 16:23:46', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('3', 'admin', 'View', 'Đăng nhập thành công', '2016-03-11 16:28:43', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('4', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 14:45:41', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('5', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 14:58:33', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('6', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 14:59:03', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('7', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 14:59:56', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('8', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 15:00:46', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('9', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 15:03:02', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('10', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 15:50:44', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('11', 'admin', 'View', 'Đăng nhập thành công', '2016-03-16 16:00:06', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('12', 'admin', 'View', 'Đăng nhập thành công', '2016-03-17 14:52:33', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('13', 'admin', 'View', 'Đăng nhập thành công', '2016-03-17 18:29:11', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('14', 'admin', 'View', 'Đăng nhập thành công', '2016-03-17 21:38:57', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('15', 'admin', 'View', 'Đăng nhập thành công', '2016-03-18 09:32:48', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('16', 'admin', 'View', 'Đăng nhập thành công', '2016-03-18 14:02:18', 'LoginAdmin', 'Đăng nhập');
INSERT INTO `tbl_logs` VALUES ('17', 'admin', 'View', 'Đăng nhập thành công', '2016-03-18 16:39:40', 'LoginAdmin', 'Đăng nhập');

-- ----------------------------
-- Table structure for tbl_nhatkysaoluu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_nhatkysaoluu`;
CREATE TABLE `tbl_nhatkysaoluu` (
  `SaoLuuID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenSaoLuu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySaoLuu` datetime DEFAULT NULL,
  `TaiKhoanSaoLuu` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuongDan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SaoLuuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_nhatkysaoluu
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_nhomtaikhoan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_nhomtaikhoan`;
CREATE TABLE `tbl_nhomtaikhoan` (
  `NhomID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NhomMa` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhomTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT '0',
  `NhomChaID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`NhomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_nhomtaikhoan
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_taikhoan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_taikhoan`;
CREATE TABLE `tbl_taikhoan` (
  `TenDangNhap` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `MatKhau` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `HoTen` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SoDienThoai` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `NhomID` int(10) unsigned DEFAULT NULL,
  `ListHuyenQuanLy` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ListXaQuanLy` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AllXa` int(1) DEFAULT '0',
  `LastLogin` datetime DEFAULT NULL,
  `UserToken` tinyint(1) DEFAULT '0',
  `LastTokenOnline` datetime DEFAULT NULL,
  `NguoiTaoTaiKhoan` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT '0',
  `DonViCongTac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChucVu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DaXoa` int(1) DEFAULT '0',
  PRIMARY KEY (`TenDangNhap`),
  KEY `NhomID` (`NhomID`),
  KEY `HuyenID` (`ListHuyenQuanLy`(255)),
  KEY `XaID` (`ListXaQuanLy`(255)),
  CONSTRAINT `tbl_taikhoan_ibfk_1` FOREIGN KEY (`NhomID`) REFERENCES `tbl_nhomtaikhoan` (`NhomID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_taikhoan
-- ----------------------------
INSERT INTO `tbl_taikhoan` VALUES ('admin', '9F10A1F536DA3A7E47B8B51B5133C8D4', 'Administrator', '909123123', 'admin@gmail.com', '', null, null, null, null, '1', '2016-03-18 16:39:40', '0', null, 'admin', '0', 'Đơn vị', 'Chức vụ', '0');

-- ----------------------------
-- Table structure for tbl_thamsohethong
-- ----------------------------
DROP TABLE IF EXISTS `tbl_thamsohethong`;
CREATE TABLE `tbl_thamsohethong` (
  `ParamID` int(11) NOT NULL AUTO_INCREMENT,
  `ParamMa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParamTen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParamValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  `ParamType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ParamID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tbl_thamsohethong
-- ----------------------------
INSERT INTO `tbl_thamsohethong` VALUES ('1', 'masotinh', 'Mã số tỉnh hiện hành', '38', '1', null);
INSERT INTO `tbl_thamsohethong` VALUES ('2', 'thumucchuataptindinhkem', 'Thư mục tập tin đính kèm', 'C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/LuuTruData', '0', null);
INSERT INTO `tbl_thamsohethong` VALUES ('3', 'thumucchuabaocao', 'Thư mục chứa báo cáo', 'D:/Workings/LuuTruData/reports/', '0', null);
INSERT INTO `tbl_thamsohethong` VALUES ('4', 'prefixmd5', 'Prefix MD5', 'HP1@#', '0', null);
INSERT INTO `tbl_thamsohethong` VALUES ('5', 'webname', 'TỈNH ĐẮK LẮK', 'TỈNH ĐẮK LẮK', '1', null);
INSERT INTO `tbl_thamsohethong` VALUES ('6', 'usernamedb', 'Tài khoản mysql', 'root', '1', null);
INSERT INTO `tbl_thamsohethong` VALUES ('7', 'passworddb', 'Mật khẩu mysql', '123456', '1', null);
INSERT INTO `tbl_thamsohethong` VALUES ('8', 'databasename', 'Tên database', 'sotuphapdaklak', '1', null);
INSERT INTO `tbl_thamsohethong` VALUES ('9', 'pathsettupmysql', 'Đường dẫn cài đặt mysql', 'C:/Program Files/MySQL/MySQL Server 5.5/bin/mysqldump.exe', '1', null);

-- ----------------------------
-- Table structure for ts_batdongsankhongcotaisanganlienvoidat
-- ----------------------------
DROP TABLE IF EXISTS `ts_batdongsankhongcotaisanganlienvoidat`;
CREATE TABLE `ts_batdongsankhongcotaisanganlienvoidat` (
  `TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID` int(11) NOT NULL AUTO_INCREMENT,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double DEFAULT NULL,
  `HinhThucSuDungChung` double DEFAULT NULL,
  `HinhThucSuDungRieng` double DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGocSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQuyenSuDungDat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQuyenSuDungDat` date DEFAULT NULL,
  `NoiCapGiayCNQuyenSuDungDat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCapGiayCNQuyenSuDungDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HanCheQuyenSuDungDat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_batdongsankhongcotaisanganlienvoidat
-- ----------------------------

-- ----------------------------
-- Table structure for ts_beca
-- ----------------------------
DROP TABLE IF EXISTS `ts_beca`;
CREATE TABLE `ts_beca` (
  `TaiSanBeCaID` int(11) NOT NULL AUTO_INCREMENT,
  `TenPhuongTien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(4) DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLmax` double DEFAULT NULL,
  `ChieuRongBmax` double DEFAULT NULL,
  `ChieuCaoD` double DEFAULT NULL,
  `Ltk` double DEFAULT NULL,
  `VatLieuVo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDungTich` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KichhThuocCabin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KyHieuMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuocPhepSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDKPhuongTienNgheCa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDKPhuongTienNgheCa` date DEFAULT NULL,
  `NoiCapGiayDKPhuongTienNgheCa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDangKyCu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanBeCaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_beca
-- ----------------------------

-- ----------------------------
-- Table structure for ts_canho
-- ----------------------------
DROP TABLE IF EXISTS `ts_canho`;
CREATE TABLE `ts_canho` (
  `TaiSanCanHoID` int(11) NOT NULL AUTO_INCREMENT,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double DEFAULT NULL,
  `HinhThucSuDungChung` double DEFAULT NULL,
  `HinhThucSuDungRieng` double DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGocSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDienTichSuDung` double DEFAULT NULL,
  `DienTichXayDung` double DEFAULT NULL,
  `KetCau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQuyenSuDungDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQuyenSuDung` date DEFAULT NULL,
  `NoiCapGiayCNQuyenSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCapGiayCNQuyenSuDungSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CanHoSo` int(5) DEFAULT NULL,
  `CanHoThuocTang` int(5) DEFAULT NULL,
  `SoTangNhaChungCu` int(5) DEFAULT NULL,
  `GiayCNQuyenSoHuuTaiSanSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQuyenSoHuuTaiSan` date DEFAULT NULL,
  `NoiCapGiayCNQuyenSoHuuTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhungHanCheVeQuyenSuDungDat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanCanHoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_canho
-- ----------------------------

-- ----------------------------
-- Table structure for ts_congtrinhkientruc
-- ----------------------------
DROP TABLE IF EXISTS `ts_congtrinhkientruc`;
CREATE TABLE `ts_congtrinhkientruc` (
  `TaiSanCongTrinhKienTrucID` int(11) NOT NULL AUTO_INCREMENT,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double DEFAULT NULL,
  `HinhThucSuDungRieng` double DEFAULT NULL,
  `HinhThucSuDungChung` double DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGoc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDienTich` double DEFAULT NULL,
  `DienTichXayDung` double DEFAULT NULL,
  `KetCau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQuyenSuDungDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQuyenSuDungDat` date DEFAULT NULL,
  `NoiCapGiayCNQuyenSuDungDat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCNQuyenSuDungDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoTang` int(5) DEFAULT NULL,
  `LoaiCongTrinh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQuyenSoHuuTaiSanSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQuyenSoHuuTaiSan` date DEFAULT NULL,
  `NoiCapGiayCNQuyenSoHuuTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HanCheQuyenSuDungDat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanCongTrinhKienTrucID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_congtrinhkientruc
-- ----------------------------

-- ----------------------------
-- Table structure for ts_cophieu
-- ----------------------------
DROP TABLE IF EXISTS `ts_cophieu`;
CREATE TABLE `ts_cophieu` (
  `TaiSanCoPhieuID` int(11) NOT NULL AUTO_INCREMENT,
  `CtyPhatHanhCoPhieu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiCongTy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaSoCoPhieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MenhGia` double DEFAULT NULL,
  `TongMenhGia` double DEFAULT NULL,
  `SoDangKy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayPhatHanh` date DEFAULT NULL,
  `LoaiCoPhieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenCoDong` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiCoDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiGiayToID` int(11) DEFAULT NULL,
  `SoGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanCoPhieuID`),
  KEY `LoaiGiayToID` (`LoaiGiayToID`),
  CONSTRAINT `ts_cophieu_ibfk_1` FOREIGN KEY (`LoaiGiayToID`) REFERENCES `dm_loaigiayto` (`LoaiGiayToID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_cophieu
-- ----------------------------

-- ----------------------------
-- Table structure for ts_maybay
-- ----------------------------
DROP TABLE IF EXISTS `ts_maybay`;
CREATE TABLE `ts_maybay` (
  `TaiSanMayBayID` int(11) NOT NULL AUTO_INCREMENT,
  `TenPhuongTien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanMayBayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_maybay
-- ----------------------------

-- ----------------------------
-- Table structure for ts_maymoc
-- ----------------------------
DROP TABLE IF EXISTS `ts_maymoc`;
CREATE TABLE `ts_maymoc` (
  `TaiSanMayMocID` int(11) NOT NULL AUTO_INCREMENT,
  `NhanHieu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanMayMocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_maymoc
-- ----------------------------

-- ----------------------------
-- Table structure for ts_motoxemay
-- ----------------------------
DROP TABLE IF EXISTS `ts_motoxemay`;
CREATE TABLE `ts_motoxemay` (
  `TaiSanMoToXeMayID` int(11) NOT NULL AUTO_INCREMENT,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhanHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiXe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamSanXuat` int(4) DEFAULT NULL,
  `SoKhung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDangKySo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanMoToXeMayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_motoxemay
-- ----------------------------

-- ----------------------------
-- Table structure for ts_nha
-- ----------------------------
DROP TABLE IF EXISTS `ts_nha`;
CREATE TABLE `ts_nha` (
  `TaiSanNhaID` int(11) NOT NULL AUTO_INCREMENT,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double(20,0) DEFAULT NULL,
  `HinhThucSuDungChung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhThucSuDungRieng` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGocSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDienTich` double(20,0) DEFAULT NULL,
  `DienTichXayDung` double DEFAULT NULL,
  `DienTichSan` double DEFAULT NULL,
  `HanCheVeQuyenSuDungDat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KetCau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQDDD` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiay` date DEFAULT NULL,
  `NoiCapGiay` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCGCNSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoTang` int(5) DEFAULT NULL,
  `LoaiCongTrinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQuyenSoHuuTaiSanSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQuyenSoHuuTaiSan` date DEFAULT NULL,
  `NoiCapGiayCNQuyenSoHuuTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanNhaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_nha
-- ----------------------------

-- ----------------------------
-- Table structure for ts_oto
-- ----------------------------
DROP TABLE IF EXISTS `ts_oto`;
CREATE TABLE `ts_oto` (
  `TaiSanOToID` int(11) NOT NULL AUTO_INCREMENT,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhanHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiXe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoChoNgoi` int(5) DEFAULT NULL,
  `NamSanXuat` int(4) DEFAULT NULL,
  `SoKhung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaiTrong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TuTrong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDangKySo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanOToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_oto
-- ----------------------------

-- ----------------------------
-- Table structure for ts_sotietkiem
-- ----------------------------
DROP TABLE IF EXISTS `ts_sotietkiem`;
CREATE TABLE `ts_sotietkiem` (
  `TaiSanSoTietKiemID` int(11) NOT NULL AUTO_INCREMENT,
  `SoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGui` date DEFAULT NULL,
  `SoDuTienGui` double DEFAULT NULL,
  `KyHan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LaiXuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NganHangCap` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTenChuSo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiGiayToID` int(11) DEFAULT NULL,
  `SoGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanSoTietKiemID`),
  KEY `LoaiGiayToID` (`LoaiGiayToID`),
  CONSTRAINT `ts_sotietkiem_ibfk_1` FOREIGN KEY (`LoaiGiayToID`) REFERENCES `dm_loaigiayto` (`LoaiGiayToID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_sotietkiem
-- ----------------------------

-- ----------------------------
-- Table structure for ts_taisan
-- ----------------------------
DROP TABLE IF EXISTS `ts_taisan`;
CREATE TABLE `ts_taisan` (
  `TaiSanID` int(11) NOT NULL AUTO_INCREMENT,
  `LoaiTaiSanID` int(11) DEFAULT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenKhoaTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID` int(11) DEFAULT NULL,
  `TaiSanBeCaID` int(11) DEFAULT NULL,
  `TaiSanCanHoID` int(11) DEFAULT NULL,
  `TaiSanCongTrinhKienTrucID` int(11) DEFAULT NULL,
  `TaiSanCoPhieuID` int(11) DEFAULT NULL,
  `TaiSanMayBayID` int(11) DEFAULT NULL,
  `TaiSanMayMocID` int(11) DEFAULT NULL,
  `TaiSanMoToXeMayID` int(11) DEFAULT NULL,
  `TaiSanNhaID` int(11) DEFAULT NULL,
  `TaiSanOToID` int(11) DEFAULT NULL,
  `TaiSanSoTietKiemID` int(11) DEFAULT NULL,
  `TaiSanLaBatDongSanKhacID` int(11) DEFAULT NULL,
  `TaiSanTauBienID` int(11) DEFAULT NULL,
  `TaiSanTauCaID` int(11) DEFAULT NULL,
  `TaiSanTauKeoGheThuyenID` int(11) DEFAULT NULL,
  `TaiSanTraiPhieuID` int(11) DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoTaiSanHinhThanhTrongTuongLai` int(1) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`),
  KEY `LoaiTaiSanID` (`LoaiTaiSanID`),
  KEY `TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID` (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`),
  KEY `TaiSanBeCaID` (`TaiSanBeCaID`),
  KEY `TaiSanCanHoID` (`TaiSanCanHoID`),
  KEY `TaiSanCongTrinhKienTrucID` (`TaiSanCongTrinhKienTrucID`),
  KEY `TaiSanCoPhieuID` (`TaiSanCoPhieuID`),
  KEY `TaiSanMayBayID` (`TaiSanMayBayID`),
  KEY `TaiSanMayMocID` (`TaiSanMayMocID`),
  KEY `TaiSanMoToXeMayID` (`TaiSanMoToXeMayID`),
  KEY `TaiSanNhaID` (`TaiSanNhaID`),
  KEY `TaiSanOTo` (`TaiSanOToID`),
  KEY `TaiSanSoTietKiemID` (`TaiSanSoTietKiemID`),
  KEY `TaiSanLaBatDongSanKhacID` (`TaiSanLaBatDongSanKhacID`),
  KEY `TaiSanTauBienID` (`TaiSanTauBienID`),
  KEY `TaiSanTauCaID` (`TaiSanTauCaID`),
  KEY `TaiSanTauKeoGheThuyenID` (`TaiSanTauKeoGheThuyenID`),
  KEY `TaiSanTraiPhieuID` (`TaiSanTraiPhieuID`),
  CONSTRAINT `ts_taisan_ibfk_10` FOREIGN KEY (`TaiSanNhaID`) REFERENCES `ts_nha` (`TaiSanNhaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_12` FOREIGN KEY (`TaiSanSoTietKiemID`) REFERENCES `ts_sotietkiem` (`TaiSanSoTietKiemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_13` FOREIGN KEY (`TaiSanLaBatDongSanKhacID`) REFERENCES `ts_sotietkiem` (`TaiSanSoTietKiemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_14` FOREIGN KEY (`TaiSanTauBienID`) REFERENCES `ts_taubien` (`TaiSanTauBienID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_15` FOREIGN KEY (`TaiSanTauCaID`) REFERENCES `ts_tauca` (`TaiSanTauCaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_16` FOREIGN KEY (`TaiSanTauKeoGheThuyenID`) REFERENCES `ts_taukeoghethuyen` (`TaiSanTauKeoGheThuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_17` FOREIGN KEY (`TaiSanTraiPhieuID`) REFERENCES `ts_traiphieu` (`TaiSanTraiPhieuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_18` FOREIGN KEY (`LoaiTaiSanID`) REFERENCES `dm_loaitaisan` (`LoaiTaiSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_19` FOREIGN KEY (`TaiSanOToID`) REFERENCES `ts_oto` (`TaiSanOToID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_2` FOREIGN KEY (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`) REFERENCES `ts_batdongsankhongcotaisanganlienvoidat` (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_3` FOREIGN KEY (`TaiSanBeCaID`) REFERENCES `ts_beca` (`TaiSanBeCaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_4` FOREIGN KEY (`TaiSanCanHoID`) REFERENCES `ts_canho` (`TaiSanCanHoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_5` FOREIGN KEY (`TaiSanCongTrinhKienTrucID`) REFERENCES `ts_congtrinhkientruc` (`TaiSanCongTrinhKienTrucID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_6` FOREIGN KEY (`TaiSanCoPhieuID`) REFERENCES `ts_cophieu` (`TaiSanCoPhieuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_7` FOREIGN KEY (`TaiSanMayBayID`) REFERENCES `ts_maybay` (`TaiSanMayBayID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_8` FOREIGN KEY (`TaiSanMayMocID`) REFERENCES `ts_maymoc` (`TaiSanMayMocID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_9` FOREIGN KEY (`TaiSanMoToXeMayID`) REFERENCES `ts_motoxemay` (`TaiSanMoToXeMayID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_taisan
-- ----------------------------

-- ----------------------------
-- Table structure for ts_taisanlabatdongsankhac
-- ----------------------------
DROP TABLE IF EXISTS `ts_taisanlabatdongsankhac`;
CREATE TABLE `ts_taisanlabatdongsankhac` (
  `TaiSanBatDongSanKhacID` int(11) NOT NULL AUTO_INCREMENT,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanBatDongSanKhacID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_taisanlabatdongsankhac
-- ----------------------------

-- ----------------------------
-- Table structure for ts_taubien
-- ----------------------------
DROP TABLE IF EXISTS `ts_taubien`;
CREATE TABLE `ts_taubien` (
  `TaiSanTauBienID` int(11) NOT NULL AUTO_INCREMENT,
  `TenTau` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(4) DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLonNhat` double DEFAULT NULL,
  `ChieuRongLonNhat` double DEFAULT NULL,
  `ChieuCaoMan` double DEFAULT NULL,
  `MucNuocToiDa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DungTichToanThan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DungTichThucDung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TrongTai` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuatMayChinh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CangDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayDangKy` date DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayChungNhanDangKyTauSo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapGiayChungNhanDangKyTauSo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayChungNhanDangKyTauSo` date DEFAULT NULL,
  PRIMARY KEY (`TaiSanTauBienID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_taubien
-- ----------------------------

-- ----------------------------
-- Table structure for ts_tauca
-- ----------------------------
DROP TABLE IF EXISTS `ts_tauca`;
CREATE TABLE `ts_tauca` (
  `TaiSanTauCaID` int(11) NOT NULL AUTO_INCREMENT,
  `TenTau` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoHieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(4) DEFAULT NULL,
  `MauThietKe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanThietKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLmax` double DEFAULT NULL,
  `Ltk` double DEFAULT NULL,
  `ChieuRongBmax` double DEFAULT NULL,
  `Btk` double DEFAULT NULL,
  `ChieuCaoD` double DEFAULT NULL,
  `ChieuChimD` double DEFAULT NULL,
  `ManKhoF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VatLieuVo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDungTich` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SucChoToiDa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TocDoTuDo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KyHieuMay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` double DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CangDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNDangKyTauSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNDangKy` date DEFAULT NULL,
  `NoiCapGiayCNDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDangKyCu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanTauCaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_tauca
-- ----------------------------

-- ----------------------------
-- Table structure for ts_taukeoghethuyen
-- ----------------------------
DROP TABLE IF EXISTS `ts_taukeoghethuyen`;
CREATE TABLE `ts_taukeoghethuyen` (
  `TaiSanTauKeoGheThuyenID` int(11) NOT NULL AUTO_INCREMENT,
  `TenTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoHieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(4) DEFAULT NULL,
  `MauThietKe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanThietKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLmax` double DEFAULT NULL,
  `Ltk` double DEFAULT NULL,
  `ChieuRongBmax` double DEFAULT NULL,
  `Btk` double DEFAULT NULL,
  `ChieuCaoD` double DEFAULT NULL,
  `ChieuChimD` double DEFAULT NULL,
  `ManKhoF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VatLieuVo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDungTich` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SucChoToiDa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TocDoTuDo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KyHieuMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` double DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CangDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNDangKyTauSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapGiayCNDangKyTau` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNDangKyTau` date DEFAULT NULL,
  `SoDangKyCu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanTauKeoGheThuyenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_taukeoghethuyen
-- ----------------------------

-- ----------------------------
-- Table structure for ts_traiphieu
-- ----------------------------
DROP TABLE IF EXISTS `ts_traiphieu`;
CREATE TABLE `ts_traiphieu` (
  `TaiSanTraiPhieuID` int(11) NOT NULL AUTO_INCREMENT,
  `LoaiTraiPhieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayPhatHanh` date DEFAULT NULL,
  `NoiPhatHanhTraiPhieu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BoTaiChinhMaSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MenhGia` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KyHan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LaiSuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanThanhToan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTen` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiGiayToID` int(11) DEFAULT NULL,
  `SoGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  PRIMARY KEY (`TaiSanTraiPhieuID`),
  KEY `LoaiGiayToID` (`LoaiGiayToID`),
  CONSTRAINT `ts_traiphieu_ibfk_1` FOREIGN KEY (`LoaiGiayToID`) REFERENCES `dm_loaigiayto` (`LoaiGiayToID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ts_traiphieu
-- ----------------------------

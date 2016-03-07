/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : sotuphapdaklak

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-03-03 17:23:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hd_hopdong
-- ----------------------------
DROP TABLE IF EXISTS `hd_hopdong`;
CREATE TABLE `hd_hopdong` (
  `HopDongID` int(11) NOT NULL,
  `LoaiHopDongID` int(11) NOT NULL DEFAULT '0',
  `TheChapID` int(11) NOT NULL DEFAULT '0',
  `ChuyenNhuongID` int(11) NOT NULL DEFAULT '0',
  `TangChoID` int(11) NOT NULL DEFAULT '0',
  `MuaBanID` int(11) NOT NULL DEFAULT '0',
  `UyQuyenID` int(11) NOT NULL DEFAULT '0',
  `ThuaKeID` int(11) NOT NULL DEFAULT '0',
  `ThueID` int(11) NOT NULL DEFAULT '0',
  `GopVonID` int(11) NOT NULL DEFAULT '0',
  `CamCoID` int(11) NOT NULL DEFAULT '0',
  `DiChucID` int(11) NOT NULL DEFAULT '0',
  `ChuyenDoiID` int(11) NOT NULL DEFAULT '0',
  `HuyBoID` int(11) NOT NULL DEFAULT '0',
  `HopDongSoanSan` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`HopDongID`,`LoaiHopDongID`,`TheChapID`,`ChuyenNhuongID`,`TangChoID`,`MuaBanID`,`UyQuyenID`,`ThuaKeID`,`ThueID`,`GopVonID`,`CamCoID`,`DiChucID`,`ChuyenDoiID`,`HuyBoID`,`HopDongSoanSan`),
  KEY `HopDongID` (`HopDongID`),
  KEY `CamCoID` (`CamCoID`),
  KEY `ChuyenDoiID` (`ChuyenDoiID`),
  KEY `ChuyenNhuongID` (`ChuyenNhuongID`),
  KEY `DiChucID` (`DiChucID`),
  KEY `GopVonID` (`GopVonID`),
  KEY `HopDongSoanSan` (`HopDongSoanSan`),
  KEY `HuyBoID` (`HuyBoID`),
  KEY `MuaBanID` (`MuaBanID`),
  KEY `TangChoID` (`TangChoID`),
  KEY `TheChapID` (`TheChapID`),
  KEY `ThuaKeID` (`ThuaKeID`),
  KEY `ThueID` (`ThueID`),
  KEY `UyQuyenID` (`UyQuyenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hopdong_taisan
-- ----------------------------
DROP TABLE IF EXISTS `hopdong_taisan`;
CREATE TABLE `hopdong_taisan` (
  `HopDongID` int(11) NOT NULL,
  `TaiSanID` int(11) NOT NULL,
  PRIMARY KEY (`HopDongID`,`TaiSanID`),
  CONSTRAINT `hopdong_taisan_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_camco
-- ----------------------------
DROP TABLE IF EXISTS `hp_camco`;
CREATE TABLE `hp_camco` (
  `HopDongID` int(11) NOT NULL,
  `SoTienDamBao` decimal(20,0) DEFAULT NULL,
  `GiaTriTaiSanCamCo` decimal(20,0) DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucSuLy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_camco_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`CamCoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_camco_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_chuyendoi
-- ----------------------------
DROP TABLE IF EXISTS `hp_chuyendoi`;
CREATE TABLE `hp_chuyendoi` (
  `HopDongId` int(11) NOT NULL,
  `GiaChuyenDoi` decimal(10,0) DEFAULT NULL,
  `GiaChenhLech` decimal(10,0) DEFAULT NULL,
  `GiaTriTaiSanA` decimal(10,0) DEFAULT NULL,
  `GiaTriTaiSanB` decimal(10,0) DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `BenTraChenhLech` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
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
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongId`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_chuyendoi_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`ChuyenDoiID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_chuyendoi_ibfk_1` FOREIGN KEY (`HopDongId`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_chuyennhuong
-- ----------------------------
DROP TABLE IF EXISTS `hp_chuyennhuong`;
CREATE TABLE `hp_chuyennhuong` (
  `HopDongID` int(11) NOT NULL,
  `GiaChuyenNhuong` decimal(20,0) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `GiaoDichMotPhan` double DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_chuyennhuong_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`ChuyenNhuongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_chuyennhuong_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_dichuc
-- ----------------------------
DROP TABLE IF EXISTS `hp_dichuc`;
CREATE TABLE `hp_dichuc` (
  `HopDongID` int(11) NOT NULL,
  `NoiDungDiChuc` text COLLATE utf8_unicode_ci,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_dichuc_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`DiChucID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_dichuc_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_gopvon
-- ----------------------------
DROP TABLE IF EXISTS `hp_gopvon`;
CREATE TABLE `hp_gopvon` (
  `HopDongID` int(11) NOT NULL,
  `GiaGopVon` decimal(20,0) DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `MucDichGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucGopVon` date DEFAULT NULL,
  `GopVonTuNgay` date DEFAULT NULL,
  `LoiNhuanGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BenDiDangKy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `KhongNganChan` bit(1) DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_gopvon_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`GopVonID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_gopvon_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_hopdongsoansan
-- ----------------------------
DROP TABLE IF EXISTS `hp_hopdongsoansan`;
CREATE TABLE `hp_hopdongsoansan` (
  `HopDongID` int(11) NOT NULL,
  `TenHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `FileDinhKem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhongChuyenQuyenSoHuu` bit(1) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_hopdongsoansan_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`HopDongSoanSan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_hopdongsoansan_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_huy
-- ----------------------------
DROP TABLE IF EXISTS `hp_huy`;
CREATE TABLE `hp_huy` (
  `HopDongID` int(11) NOT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_huy_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`HuyBoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_huy_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_muaban
-- ----------------------------
DROP TABLE IF EXISTS `hp_muaban`;
CREATE TABLE `hp_muaban` (
  `HopDongID` int(11) NOT NULL,
  `GiaMuaBan` decimal(20,0) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaoDichMotPhan` double DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_muaban_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`MuaBanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_muaban_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_tangcho
-- ----------------------------
DROP TABLE IF EXISTS `hp_tangcho`;
CREATE TABLE `hp_tangcho` (
  `HopDongID` int(11) NOT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaTriQSDDTSGLVD` decimal(20,0) DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
  `TrangThietBi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToPhapLy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacCamKet` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DieuKienTangCho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_tangcho_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`TangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_tangcho_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_thechap
-- ----------------------------
DROP TABLE IF EXISTS `hp_thechap`;
CREATE TABLE `hp_thechap` (
  `HopDongID` int(11) NOT NULL,
  `SoTienDamBao` decimal(30,0) DEFAULT NULL,
  `GiaTheChap` decimal(30,0) DEFAULT NULL,
  `NgayThamDinh` date DEFAULT NULL,
  `BenDangKy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucSuLy` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
  `GiayCapPhepXayDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapPhep` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiThuaDat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double(20,0) DEFAULT NULL,
  `HinhThucSuDungChung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhThucSuDungRieng` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MucDichSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGocSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HanCheQuyenSuDung` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_thechap_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`TheChapID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_thechap_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_thuake
-- ----------------------------
DROP TABLE IF EXISTS `hp_thuake`;
CREATE TABLE `hp_thuake` (
  `HopDongID` int(11) NOT NULL,
  `NoiDungTuChoiDiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToCanCuDeThuaKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayChet` date DEFAULT NULL,
  `SoChungTu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayChungTu` date DEFAULT NULL,
  `NoiCapGiayChungTu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_thuake_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`ThuaKeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_thuake_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_thue
-- ----------------------------
DROP TABLE IF EXISTS `hp_thue`;
CREATE TABLE `hp_thue` (
  `HopDongID` int(11) NOT NULL,
  `ThoiHanThue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayKetThucChoThue` date DEFAULT NULL,
  `ChoThueTuNgay` date DEFAULT NULL,
  `MucDichThue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaThue` decimal(10,0) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `KhongNganChan` bit(1) DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_thue_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`ThueID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_thue_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hp_uyquyen
-- ----------------------------
DROP TABLE IF EXISTS `hp_uyquyen`;
CREATE TABLE `hp_uyquyen` (
  `HopDongID` int(11) NOT NULL,
  `PhamVyUyQuyen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanUyQuyen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucUyQuyen` date DEFAULT NULL,
  `UyQuyenTuNgay` date DEFAULT NULL,
  `ThuLaoPhaiTra` decimal(20,0) DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhongNganChan` bit(1) DEFAULT NULL,
  `GiaoDichMotPhan` double(20,0) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongID`),
  KEY `LoaiHD` (`LoaiHD`),
  CONSTRAINT `hp_uyquyen_ibfk_2` FOREIGN KEY (`LoaiHD`) REFERENCES `hd_hopdong` (`UyQuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hp_uyquyen_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_taisan
-- ----------------------------
DROP TABLE IF EXISTS `ts_taisan`;
CREATE TABLE `ts_taisan` (
  `TaiSanID` int(11) NOT NULL,
  `LoaiTaiSanID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

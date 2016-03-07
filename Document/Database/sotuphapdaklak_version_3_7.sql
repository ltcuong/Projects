/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : sotuphapdaklak

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-03-07 11:56:19
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
-- Table structure for ts_batdongsankhongcotaisanganlienvoidat
-- ----------------------------
DROP TABLE IF EXISTS `ts_batdongsankhongcotaisanganlienvoidat`;
CREATE TABLE `ts_batdongsankhongcotaisanganlienvoidat` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double(50,0) DEFAULT NULL,
  `HinhThucSuDungChung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhThucSuDungRieng` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGocSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQSDD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQSDD` date DEFAULT NULL,
  `NoiCapGiayCNQSDD` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCapGiayCNQSDD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HanCheQuyenSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_beca
-- ----------------------------
DROP TABLE IF EXISTS `ts_beca`;
CREATE TABLE `ts_beca` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenPhuongTien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(11) DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLmax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuRongBmax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuCaoD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Ltk` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VatLieuVo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDungTich` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KichhThuockaBin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KyHieuMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuocPhepSuDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDKPhuongTienNgheCa` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDK` date DEFAULT NULL,
  `NoiCapGiayDK` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDangKyCu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_canho
-- ----------------------------
DROP TABLE IF EXISTS `ts_canho`;
CREATE TABLE `ts_canho` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MoTa` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double(20,0) DEFAULT NULL,
  `HinhThucSuDungChung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhThucSuDungRieng` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGocSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDienTichSuDung` double(20,0) DEFAULT NULL,
  `DienTichXayDung` double(20,0) DEFAULT NULL,
  `DienTichSan` double(20,0) DEFAULT NULL,
  `HanCheQuyenSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KetCau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQDDD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCN` date DEFAULT NULL,
  `NoiCapGiayCN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCapGiayCN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoTang` int(10) DEFAULT NULL,
  `LoaiCongTrinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQSDTS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQSDTS` date DEFAULT NULL,
  `NoiCapGiayCNQSDTS` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_congtrinhkientruc
-- ----------------------------
DROP TABLE IF EXISTS `ts_congtrinhkientruc`;
CREATE TABLE `ts_congtrinhkientruc` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThuaDatSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToBanDoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienTich` double(20,0) DEFAULT NULL,
  `HinhThucSuDungRieng` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhThucSuDungChung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MucDichSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanSuDung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NguonGoc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDienTich` double(20,0) DEFAULT NULL,
  `DienTichXayDung` double(20,0) DEFAULT NULL,
  `KetCau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQSDD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQSDD` date DEFAULT NULL,
  `NoiCapGiayCNQSDD` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCNQSDDSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoTang` int(10) DEFAULT NULL,
  `LoaiCongTrinh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQSHTS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCNQSHTS` date DEFAULT NULL,
  `NoiCapGiayCNQSHTS` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HanCheQuyenSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_cophieu
-- ----------------------------
DROP TABLE IF EXISTS `ts_cophieu`;
CREATE TABLE `ts_cophieu` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CtyPhatHanhCoPhieu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiCongTy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaSoCoPhieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MenhGia` decimal(20,0) DEFAULT NULL,
  `TongMenhGia` decimal(20,0) DEFAULT NULL,
  `SoDangKy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayPhatHanh` date DEFAULT NULL,
  `LoaiCoPhieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenCoDong` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChiCoDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiGiayToTuyThan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu``` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_maybay
-- ----------------------------
DROP TABLE IF EXISTS `ts_maybay`;
CREATE TABLE `ts_maybay` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenPhuongTien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_maymoc
-- ----------------------------
DROP TABLE IF EXISTS `ts_maymoc`;
CREATE TABLE `ts_maymoc` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhanHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_motoxemay
-- ----------------------------
DROP TABLE IF EXISTS `ts_motoxemay`;
CREATE TABLE `ts_motoxemay` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhanHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiXe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamSanXuat` int(11) DEFAULT NULL,
  `SoKhung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDangKySo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_nha
-- ----------------------------
DROP TABLE IF EXISTS `ts_nha`;
CREATE TABLE `ts_nha` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `DienTichXayDung` double(20,0) DEFAULT NULL,
  `DienTichSan` double(20,0) DEFAULT NULL,
  `HanCheVeQuyen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KetCau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQDDD` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiay` date DEFAULT NULL,
  `NoiCapGiay` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VaoSoCGCNSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoTang` int(10) DEFAULT NULL,
  `LoaiCongTrinh` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNQSDTS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCN` date DEFAULT NULL,
  `NoiCapGiayCN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_oto
-- ----------------------------
DROP TABLE IF EXISTS `ts_oto`;
CREATE TABLE `ts_oto` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NhanHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiXe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MauSon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoChoNgoi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamSanXuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoKhung` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaiTrong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TuTrong` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayDangKySo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_sotietkiem
-- ----------------------------
DROP TABLE IF EXISTS `ts_sotietkiem`;
CREATE TABLE `ts_sotietkiem` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGui` date DEFAULT NULL,
  `SoDuTienGui` decimal(20,0) DEFAULT NULL,
  `KyHan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LaiXuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTien` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NganHangCap` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTenChuSo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiGiayToTuyThan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
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

-- ----------------------------
-- Table structure for ts_taisanlabatdongsankhac
-- ----------------------------
DROP TABLE IF EXISTS `ts_taisanlabatdongsankhac`;
CREATE TABLE `ts_taisanlabatdongsankhac` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_taubien
-- ----------------------------
DROP TABLE IF EXISTS `ts_taubien`;
CREATE TABLE `ts_taubien` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(11) DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLonNhat` double DEFAULT NULL,
  `ChieuRongLonNhat` double DEFAULT NULL,
  `ChieuCaoMan` double DEFAULT NULL,
  `MucNuocToiDa` double DEFAULT NULL,
  `DungTichToanThan` double DEFAULT NULL,
  `DungTichThucDung` double DEFAULT NULL,
  `TrongTai` double DEFAULT NULL,
  `CongSuatMayChinh` double DEFAULT NULL,
  `CangDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayChungNhanDangKyTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapGiayChungNhan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayChungNhan` date DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_tauca
-- ----------------------------
DROP TABLE IF EXISTS `ts_tauca`;
CREATE TABLE `ts_tauca` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoHieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(11) DEFAULT NULL,
  `MuaThietKe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanThietke` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLmax` double DEFAULT NULL,
  `Ltk` double DEFAULT NULL,
  `ChieuRongBmax` double DEFAULT NULL,
  `Btk` double DEFAULT NULL,
  `ChieuCaoD` double DEFAULT NULL,
  `ChieuChimD` double DEFAULT NULL,
  `ManKhoF` double DEFAULT NULL,
  `VatLieuVo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDungTich` double DEFAULT NULL,
  `SucChoToiDa` double DEFAULT NULL,
  `TocDoTuDo` double DEFAULT NULL,
  `KyHieuMay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` double DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CangDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayChungNhanDangKyTau` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayCN` date DEFAULT NULL,
  `NoiCapGiayCN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoDangKyCu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_taukeoghethuyen
-- ----------------------------
DROP TABLE IF EXISTS `ts_taukeoghethuyen`;
CREATE TABLE `ts_taukeoghethuyen` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoHieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(11) DEFAULT NULL,
  `MauThietKe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanThietKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ChieuDaiLmax` double DEFAULT NULL,
  `Ltk` double DEFAULT NULL,
  `ChieuRongBmax` double DEFAULT NULL,
  `Btk` double DEFAULT NULL,
  `ChieuCaoD` double DEFAULT NULL,
  `ChieuChimD` double DEFAULT NULL,
  `ManKhoF` double DEFAULT NULL,
  `VatLieuVo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TongDungTich` double DEFAULT NULL,
  `SucChoToiDa` double DEFAULT NULL,
  `TocDoTuDo` double DEFAULT NULL,
  `KieuMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` double DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CangDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayCNDangKY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapGiayCN` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiay` date DEFAULT NULL,
  `SoDangKyCu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_traiphieu
-- ----------------------------
DROP TABLE IF EXISTS `ts_traiphieu`;
CREATE TABLE `ts_traiphieu` (
  `TaiSanID` int(11) NOT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTraiPhieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayPhatHanh` date DEFAULT NULL,
  `NoiPhatHanhTraiPhieu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BoTaiChinhMaSo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MenhGia` decimal(20,0) DEFAULT NULL,
  `KyHan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LaiSuat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanThanhToan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTen` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoGiayTo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCapGiayTo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayTo` date DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

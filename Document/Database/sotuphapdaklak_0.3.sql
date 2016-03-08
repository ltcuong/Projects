/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : sotuphapdaklak

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2016-03-08 09:52:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dm_loaihopdong
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaihopdong`;
CREATE TABLE `dm_loaihopdong` (
  `LoaiHopDongID` int(11) NOT NULL,
  `TenLoaiHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LoaiHopDongID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for dm_loaihopdongchitiet
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaihopdongchitiet`;
CREATE TABLE `dm_loaihopdongchitiet` (
  `LoaiHopDongChiTietID` int(11) NOT NULL,
  `TenLoaiHopDongChiTiet` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoaiHopDongChiTietID`),
  KEY `LoaiHopDongID` (`LoaiHopDongID`),
  CONSTRAINT `dm_loaihopdongchitiet_ibfk_1` FOREIGN KEY (`LoaiHopDongID`) REFERENCES `dm_loaihopdong` (`LoaiHopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for dm_loaitaisan
-- ----------------------------
DROP TABLE IF EXISTS `dm_loaitaisan`;
CREATE TABLE `dm_loaitaisan` (
  `LoaiTaSanID` int(11) NOT NULL,
  `TenLoaiTaiSan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`LoaiTaSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_camco
-- ----------------------------
DROP TABLE IF EXISTS `hd_camco`;
CREATE TABLE `hd_camco` (
  `HopDongCamCoID` int(11) NOT NULL,
  `SoTienDamBao` decimal(20,0) DEFAULT NULL,
  `GiaTriTaiSanCamCo` decimal(20,0) DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `PhuongThucSuLy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongCamCoID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_chuyendoi
-- ----------------------------
DROP TABLE IF EXISTS `hd_chuyendoi`;
CREATE TABLE `hd_chuyendoi` (
  `HopDongChuyenDoiID` int(11) NOT NULL,
  `GiaChuyenDoi` decimal(10,0) DEFAULT NULL,
  `GiaChenhLech` decimal(10,0) DEFAULT NULL,
  `GiaTriTaiSanA` decimal(10,0) DEFAULT NULL,
  `GiaTriTaiSanB` decimal(10,0) DEFAULT NULL,
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
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongChuyenDoiID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_chuyennhuong
-- ----------------------------
DROP TABLE IF EXISTS `hd_chuyennhuong`;
CREATE TABLE `hd_chuyennhuong` (
  `HopDongChuyenNhuongID` int(11) NOT NULL,
  `GiaChuyenNhuong` decimal(20,0) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongChuyenNhuongID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_dichuc
-- ----------------------------
DROP TABLE IF EXISTS `hd_dichuc`;
CREATE TABLE `hd_dichuc` (
  `HopDongDiChucID` int(11) NOT NULL,
  `NoiDungDiChuc` text COLLATE utf8_unicode_ci,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongDiChucID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_gopvon
-- ----------------------------
DROP TABLE IF EXISTS `hd_gopvon`;
CREATE TABLE `hd_gopvon` (
  `HopDongGopVonID` int(11) NOT NULL,
  `GiaGopVon` decimal(20,0) DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `MucDichGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucGopVon` date DEFAULT NULL,
  `GopVonTuNgay` date DEFAULT NULL,
  `LoiNhuanGopVon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `KhongNganChan` bit(1) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongGopVonID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_hopdong
-- ----------------------------
DROP TABLE IF EXISTS `hd_hopdong`;
CREATE TABLE `hd_hopdong` (
  `HopDongID` int(11) NOT NULL,
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
  `BenDangKy` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BenChiuPhi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaoDichMotPhan` double DEFAULT NULL,
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
  CONSTRAINT `hd_hopdong_ibfk_14` FOREIGN KEY (`HopDongSoanSanID`) REFERENCES `hd_hopdongsoansan` (`HopDongSoanSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_1` FOREIGN KEY (`LoaiHopDongChiTietID`) REFERENCES `dm_loaihopdongchitiet` (`LoaiHopDongChiTietID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_10` FOREIGN KEY (`HopDongCamCoID`) REFERENCES `hd_camco` (`HopDongCamCoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_11` FOREIGN KEY (`HopDongDiChucID`) REFERENCES `hd_dichuc` (`HopDongDiChucID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_12` FOREIGN KEY (`HopDongChuyenDoiID`) REFERENCES `hd_chuyendoi` (`HopDongChuyenDoiID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_13` FOREIGN KEY (`HopDongHuyBoID`) REFERENCES `hd_huy` (`HopDongHuyID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_2` FOREIGN KEY (`HopDongTheChapID`) REFERENCES `hd_thechap` (`HopDongTheChapID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_3` FOREIGN KEY (`HopDongChuyenNhuongID`) REFERENCES `hd_chuyennhuong` (`HopDongChuyenNhuongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_4` FOREIGN KEY (`HopDongTangChoID`) REFERENCES `hd_tangcho` (`HopDongTangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_5` FOREIGN KEY (`HopDongMuaBanID`) REFERENCES `hd_tangcho` (`HopDongTangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_6` FOREIGN KEY (`HopDongMuaBanID`) REFERENCES `hd_muaban` (`HopDongMuaBanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_7` FOREIGN KEY (`HopDongUyQuyenID`) REFERENCES `hd_uyquyen` (`HopDongUyQuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_8` FOREIGN KEY (`HopDongThuaKeID`) REFERENCES `hd_thuake` (`HopDongThueKeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_9` FOREIGN KEY (`HopDongGopVonID`) REFERENCES `hd_gopvon` (`HopDongGopVonID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_hopdongsoansan
-- ----------------------------
DROP TABLE IF EXISTS `hd_hopdongsoansan`;
CREATE TABLE `hd_hopdongsoansan` (
  `HopDongSoanSanID` int(11) NOT NULL,
  `TenHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `FileDinhKem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhongChuyenQuyenSoHuu` bit(1) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongSoanSanID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_huy
-- ----------------------------
DROP TABLE IF EXISTS `hd_huy`;
CREATE TABLE `hd_huy` (
  `HopDongHuyID` int(11) NOT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongHuyID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_muaban
-- ----------------------------
DROP TABLE IF EXISTS `hd_muaban`;
CREATE TABLE `hd_muaban` (
  `HopDongMuaBanID` int(11) NOT NULL,
  `GiaMuaBan` decimal(20,0) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongMuaBanID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_tangcho
-- ----------------------------
DROP TABLE IF EXISTS `hd_tangcho`;
CREATE TABLE `hd_tangcho` (
  `HopDongTangChoID` int(11) NOT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `GiaTriQSDDTSGLVD` decimal(20,0) DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `TrangThietBi` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToPhapLy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacCamKet` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DieuKienTangCho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongTangChoID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_thechap
-- ----------------------------
DROP TABLE IF EXISTS `hd_thechap`;
CREATE TABLE `hd_thechap` (
  `HopDongTheChapID` int(11) NOT NULL,
  `SoTienDamBao` decimal(30,0) DEFAULT NULL,
  `GiaTheChap` decimal(30,0) DEFAULT NULL,
  `NgayThamDinh` date DEFAULT NULL,
  `PhuongThucSuLy` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
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
  PRIMARY KEY (`HopDongTheChapID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_thuake
-- ----------------------------
DROP TABLE IF EXISTS `hd_thuake`;
CREATE TABLE `hd_thuake` (
  `HopDongThueKeID` int(11) NOT NULL,
  `NoiDungTuChoiDiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToCanCuDeThuaKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayChet` date DEFAULT NULL,
  `SoChungTu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayChungTu` date DEFAULT NULL,
  `NoiCapGiayChungTu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongThueKeID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_thue
-- ----------------------------
DROP TABLE IF EXISTS `hd_thue`;
CREATE TABLE `hd_thue` (
  `HopDongThueID` int(11) NOT NULL,
  `ThoiHanThue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayKetThucChoThue` date DEFAULT NULL,
  `ChoThueTuNgay` date DEFAULT NULL,
  `MucDichThue` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaThue` decimal(10,0) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `CacThoaThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `KhongNganChan` bit(1) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongThueID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hd_uyquyen
-- ----------------------------
DROP TABLE IF EXISTS `hd_uyquyen`;
CREATE TABLE `hd_uyquyen` (
  `HopDongUyQuyenID` int(11) NOT NULL,
  `PhamVyUyQuyen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanUyQuyen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucUyQuyen` date DEFAULT NULL,
  `UyQuyenTuNgay` date DEFAULT NULL,
  `ThuLaoPhaiTra` decimal(20,0) DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KhongNganChan` bit(1) DEFAULT NULL,
  `LoaiHD` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongUyQuyenID`),
  KEY `LoaiHD` (`LoaiHD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for hopdong_taisan
-- ----------------------------
DROP TABLE IF EXISTS `hopdong_taisan`;
CREATE TABLE `hopdong_taisan` (
  `HopDongID` int(11) NOT NULL,
  `TaiSanID` int(11) NOT NULL,
  PRIMARY KEY (`HopDongID`,`TaiSanID`),
  KEY `TaiSanID` (`TaiSanID`),
  CONSTRAINT `hopdong_taisan_ibfk_2` FOREIGN KEY (`TaiSanID`) REFERENCES `ts_taisan` (`TaiSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hopdong_taisan_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_batdongsankhongcotaisanganlienvoidat
-- ----------------------------
DROP TABLE IF EXISTS `ts_batdongsankhongcotaisanganlienvoidat`;
CREATE TABLE `ts_batdongsankhongcotaisanganlienvoidat` (
  `TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_beca
-- ----------------------------
DROP TABLE IF EXISTS `ts_beca`;
CREATE TABLE `ts_beca` (
  `TaiSanBeCaID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanBeCaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_canho
-- ----------------------------
DROP TABLE IF EXISTS `ts_canho`;
CREATE TABLE `ts_canho` (
  `TaiSanCanHoID` int(11) NOT NULL,
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
  `LoaiTS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanCanHoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_congtrinhkientruc
-- ----------------------------
DROP TABLE IF EXISTS `ts_congtrinhkientruc`;
CREATE TABLE `ts_congtrinhkientruc` (
  `TaiSanCongTrinhKienTrucID` int(11) NOT NULL,
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
  `HanCheQuyenSuDung` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTS` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanCongTrinhKienTrucID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_cophieu
-- ----------------------------
DROP TABLE IF EXISTS `ts_cophieu`;
CREATE TABLE `ts_cophieu` (
  `TaiSanCoPhieuID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanCoPhieuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_maybay
-- ----------------------------
DROP TABLE IF EXISTS `ts_maybay`;
CREATE TABLE `ts_maybay` (
  `TaiSanMayBayID` int(11) NOT NULL,
  `TenPhuongTien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanMayBayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_maymoc
-- ----------------------------
DROP TABLE IF EXISTS `ts_maymoc`;
CREATE TABLE `ts_maymoc` (
  `TaiSanMayMocID` int(11) NOT NULL,
  `NhanHieu` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanMayMocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_motoxemay
-- ----------------------------
DROP TABLE IF EXISTS `ts_motoxemay`;
CREATE TABLE `ts_motoxemay` (
  `TaiSanMoToXeMayID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanMoToXeMayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_nha
-- ----------------------------
DROP TABLE IF EXISTS `ts_nha`;
CREATE TABLE `ts_nha` (
  `TaiSanNhaID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanNhaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_oto
-- ----------------------------
DROP TABLE IF EXISTS `ts_oto`;
CREATE TABLE `ts_oto` (
  `TaiSanOToID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanOToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_sotietkiem
-- ----------------------------
DROP TABLE IF EXISTS `ts_sotietkiem`;
CREATE TABLE `ts_sotietkiem` (
  `TaiSanSoTietKiemID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanSoTietKiemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_taisan
-- ----------------------------
DROP TABLE IF EXISTS `ts_taisan`;
CREATE TABLE `ts_taisan` (
  `TaiSanID` int(11) NOT NULL,
  `LoaiTaiSanID` int(11) DEFAULT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID` int(11) DEFAULT NULL,
  `TaiSanBeCaID` int(11) DEFAULT NULL,
  `TaiSanCanHoID` int(11) DEFAULT NULL,
  `TaiSanCongTrinhKienTrucID` int(11) DEFAULT NULL,
  `TaiSanCoPhieuID` int(11) DEFAULT NULL,
  `TaiSanMayBayID` int(11) DEFAULT NULL,
  `TaiSanMayMocID` int(11) DEFAULT NULL,
  `TaiSanMoToXeMayID` int(11) DEFAULT NULL,
  `TaiSanNhaID` int(11) DEFAULT NULL,
  `TaiSanOTo` int(11) DEFAULT NULL,
  `TaiSanSoTietKiemID` int(11) DEFAULT NULL,
  `TaiSanLaBatDongSanKhacID` int(11) DEFAULT NULL,
  `TaiSanTauBienID` int(11) DEFAULT NULL,
  `TaiSanTauCaID` int(11) DEFAULT NULL,
  `TaiSanTauKeoGheThuyenID` int(11) DEFAULT NULL,
  `TaiSanTraiPhieuID` int(11) DEFAULT NULL,
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
  KEY `TaiSanOTo` (`TaiSanOTo`),
  KEY `TaiSanSoTietKiemID` (`TaiSanSoTietKiemID`),
  KEY `TaiSanLaBatDongSanKhacID` (`TaiSanLaBatDongSanKhacID`),
  KEY `TaiSanTauBienID` (`TaiSanTauBienID`),
  KEY `TaiSanTauCaID` (`TaiSanTauCaID`),
  KEY `TaiSanTauKeoGheThuyenID` (`TaiSanTauKeoGheThuyenID`),
  KEY `TaiSanTraiPhieuID` (`TaiSanTraiPhieuID`),
  CONSTRAINT `ts_taisan_ibfk_17` FOREIGN KEY (`TaiSanTraiPhieuID`) REFERENCES `ts_traiphieu` (`TaiSanTraiPhieuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_1` FOREIGN KEY (`LoaiTaiSanID`) REFERENCES `dm_loaitaisan` (`LoaiTaSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_10` FOREIGN KEY (`TaiSanNhaID`) REFERENCES `ts_nha` (`TaiSanNhaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_11` FOREIGN KEY (`TaiSanOTo`) REFERENCES `ts_oto` (`TaiSanOToID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_12` FOREIGN KEY (`TaiSanSoTietKiemID`) REFERENCES `ts_sotietkiem` (`TaiSanSoTietKiemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_13` FOREIGN KEY (`TaiSanLaBatDongSanKhacID`) REFERENCES `ts_sotietkiem` (`TaiSanSoTietKiemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_14` FOREIGN KEY (`TaiSanTauBienID`) REFERENCES `ts_taubien` (`TaiSanTauBienID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_15` FOREIGN KEY (`TaiSanTauCaID`) REFERENCES `ts_tauca` (`TaiSanTauCaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_16` FOREIGN KEY (`TaiSanTauKeoGheThuyenID`) REFERENCES `ts_taukeoghethuyen` (`TaiSanTauKeoGheThuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
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
-- Table structure for ts_taisanlabatdongsankhac
-- ----------------------------
DROP TABLE IF EXISTS `ts_taisanlabatdongsankhac`;
CREATE TABLE `ts_taisanlabatdongsankhac` (
  `TaiSanBatDongSanKhacID` int(11) NOT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanBatDongSanKhacID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_taubien
-- ----------------------------
DROP TABLE IF EXISTS `ts_taubien`;
CREATE TABLE `ts_taubien` (
  `TaiSanTauBienID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanTauBienID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_tauca
-- ----------------------------
DROP TABLE IF EXISTS `ts_tauca`;
CREATE TABLE `ts_tauca` (
  `TaiSanTauCaID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanTauCaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_taukeoghethuyen
-- ----------------------------
DROP TABLE IF EXISTS `ts_taukeoghethuyen`;
CREATE TABLE `ts_taukeoghethuyen` (
  `TaiSanTauKeoGheThuyenID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanTauKeoGheThuyenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for ts_traiphieu
-- ----------------------------
DROP TABLE IF EXISTS `ts_traiphieu`;
CREATE TABLE `ts_traiphieu` (
  `TaiSanTraiPhieuID` int(11) NOT NULL,
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
  `LoaiTSID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaiSanTraiPhieuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

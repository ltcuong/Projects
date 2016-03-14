# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.43)
# Database: sotuphapdaklak
# Generation Time: 2016-03-14 08:55:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table dm_huyen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_huyen`;

CREATE TABLE `dm_huyen` (
  `HuyenID` int(5) NOT NULL,
  `HuyenMa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HuyenTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhID` int(5) DEFAULT NULL,
  `MaBaoCao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HuyenID`),
  KEY `TinhID` (`TinhID`),
  CONSTRAINT `dm_huyen_ibfk_1` FOREIGN KEY (`TinhID`) REFERENCES `dm_tinh` (`TinhID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_loaiduongsu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_loaiduongsu`;

CREATE TABLE `dm_loaiduongsu` (
  `LoaiDuongSuID` int(5) NOT NULL,
  `LoaiDuongSuTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`LoaiDuongSuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_loaigiayto
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_loaigiayto`;

CREATE TABLE `dm_loaigiayto` (
  `LoaiGiayToID` int(11) NOT NULL,
  `LoaiGiayToTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`LoaiGiayToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_loaihopdong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_loaihopdong`;

CREATE TABLE `dm_loaihopdong` (
  `LoaiHopDongID` int(11) NOT NULL,
  `TenLoaiHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoBenC` tinyint(1) DEFAULT NULL,
  `CoDoiChuSoHuu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`LoaiHopDongID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_loaihopdongchitiet
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_loaihopdongchitiet`;

CREATE TABLE `dm_loaihopdongchitiet` (
  `LoaiHopDongChiTietID` int(11) NOT NULL,
  `LoaiHopDongChiTietTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoaiHopDongChiTietID`),
  KEY `LoaiHopDongID` (`LoaiHopDongID`),
  CONSTRAINT `dm_loaihopdongchitiet_ibfk_1` FOREIGN KEY (`LoaiHopDongID`) REFERENCES `dm_loaihopdong` (`LoaiHopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_loaitaisan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_loaitaisan`;

CREATE TABLE `dm_loaitaisan` (
  `LoaiTaiSanID` int(11) NOT NULL,
  `LoaiTaiSanTen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiHopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LoaiTaiSanID`),
  KEY `LoaiHopDongID` (`LoaiHopDongID`),
  CONSTRAINT `dm_loaitaisan_ibfk_1` FOREIGN KEY (`LoaiHopDongID`) REFERENCES `dm_loaihopdong` (`LoaiHopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_tinh
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_tinh`;

CREATE TABLE `dm_tinh` (
  `TinhID` int(5) NOT NULL,
  `TinhMa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TinhTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenThanhPho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaBaoCao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TinhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_tinhtrang
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_tinhtrang`;

CREATE TABLE `dm_tinhtrang` (
  `TinhTrangID` int(5) NOT NULL,
  `TinhTrangTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoTheChinhSua` tinyint(1) DEFAULT NULL,
  `CoTheXoa` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`TinhTrangID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table dm_xa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dm_xa`;

CREATE TABLE `dm_xa` (
  `XaID` int(5) NOT NULL,
  `XaMa` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XaTen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HuyenID` int(5) DEFAULT NULL,
  `MaBaoCao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`XaID`),
  KEY `HuyenID` (`HuyenID`),
  CONSTRAINT `dm_xa_ibfk_1` FOREIGN KEY (`HuyenID`) REFERENCES `dm_huyen` (`HuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ds_duongsu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ds_duongsu`;

CREATE TABLE `ds_duongsu` (
  `DuongSuID` int(11) NOT NULL,
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
  `LoaiDuongSuID` int(5) DEFAULT NULL,
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
  CONSTRAINT `ds_duongsu_ibfk_4` FOREIGN KEY (`XaThuongTruID`) REFERENCES `dm_xa` (`XaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ds_duongsu_ibfk_5` FOREIGN KEY (`LoaiDuongSuID`) REFERENCES `dm_loaiduongsu` (`LoaiDuongSuID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_camco
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_camco`;

CREATE TABLE `hd_camco` (
  `HopDongCamCoID` int(11) NOT NULL,
  `SoTienDamBao` double DEFAULT NULL,
  `GiaTriTaiSanCamCo` double DEFAULT NULL,
  `NgayThamDinhTaiSan` date DEFAULT NULL,
  `PhuongThucSuLyTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  PRIMARY KEY (`HopDongCamCoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_chuyendoi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_chuyendoi`;

CREATE TABLE `hd_chuyendoi` (
  `HopDongChuyenDoiID` int(11) NOT NULL,
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



# Dump of table hd_chuyennhuong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_chuyennhuong`;

CREATE TABLE `hd_chuyennhuong` (
  `HopDongChuyenNhuongID` int(11) NOT NULL,
  `GiaChuyenNhuong` double DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  PRIMARY KEY (`HopDongChuyenNhuongID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_dichuc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_dichuc`;

CREATE TABLE `hd_dichuc` (
  `HopDongDiChucID` int(11) NOT NULL,
  `NoiDungDiChuc` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`HopDongDiChucID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_filedinhkemhopdong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_filedinhkemhopdong`;

CREATE TABLE `hd_filedinhkemhopdong` (
  `FileDinhKemID` int(11) NOT NULL,
  `TenFile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuongDan` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FileDinhKemID`),
  KEY `HopDongID` (`HopDongID`),
  CONSTRAINT `hd_filedinhkemhopdong_ibfk_1` FOREIGN KEY (`HopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_gopvon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_gopvon`;

CREATE TABLE `hd_gopvon` (
  `HopDongGopVonID` int(11) NOT NULL,
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



# Dump of table hd_hopdong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_hopdong`;

CREATE TABLE `hd_hopdong` (
  `HopDongID` int(11) NOT NULL,
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
  CONSTRAINT `hd_hopdong_ibfk_2` FOREIGN KEY (`HopDongTheChapID`) REFERENCES `hd_thechap` (`HopDongTheChapID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_3` FOREIGN KEY (`HopDongChuyenNhuongID`) REFERENCES `hd_chuyennhuong` (`HopDongChuyenNhuongID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_4` FOREIGN KEY (`HopDongTangChoID`) REFERENCES `hd_tangcho` (`HopDongTangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_5` FOREIGN KEY (`HopDongMuaBanID`) REFERENCES `hd_tangcho` (`HopDongTangChoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_6` FOREIGN KEY (`HopDongMuaBanID`) REFERENCES `hd_muaban` (`HopDongMuaBanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_7` FOREIGN KEY (`HopDongUyQuyenID`) REFERENCES `hd_uyquyen` (`HopDongUyQuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_8` FOREIGN KEY (`HopDongThuaKeID`) REFERENCES `hd_thuake` (`HopDongThueKeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `hd_hopdong_ibfk_9` FOREIGN KEY (`HopDongGopVonID`) REFERENCES `hd_gopvon` (`HopDongGopVonID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_huy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_huy`;

CREATE TABLE `hd_huy` (
  `HopDongHuyID` int(11) NOT NULL,
  `NoiDungHuy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HuyHopDongID` int(11) DEFAULT NULL,
  PRIMARY KEY (`HopDongHuyID`),
  KEY `LoaiHD` (`NoiDungHuy`),
  KEY `HuyHopDongID` (`HuyHopDongID`),
  CONSTRAINT `hd_huy_ibfk_1` FOREIGN KEY (`HuyHopDongID`) REFERENCES `hd_hopdong` (`HopDongID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_muaban
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_muaban`;

CREATE TABLE `hd_muaban` (
  `HopDongMuaBanID` int(11) NOT NULL,
  `GiaMuaBan` double DEFAULT NULL,
  `PhuongThucThanhToan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayGiaoTaiSan` date DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongMuaBanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_soansan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_soansan`;

CREATE TABLE `hd_soansan` (
  `HopDongSoanSanID` int(11) NOT NULL,
  `TenHopDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci,
  `KhongChuyenQuyenSoHuu` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`HopDongSoanSanID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_tangcho
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_tangcho`;

CREATE TABLE `hd_tangcho` (
  `HopDongTangChoID` int(11) NOT NULL,
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



# Dump of table hd_thechap
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_thechap`;

CREATE TABLE `hd_thechap` (
  `HopDongTheChapID` int(11) NOT NULL,
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



# Dump of table hd_thuake
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_thuake`;

CREATE TABLE `hd_thuake` (
  `HopDongThueKeID` int(11) NOT NULL,
  `NoiDungTuChoiDiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiayToCanCuDeThuaKe` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayChet` date DEFAULT NULL,
  `SoGiayChungTu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayChungTu` date DEFAULT NULL,
  `NoiCapGiayChungTu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongThueKeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hd_thue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_thue`;

CREATE TABLE `hd_thue` (
  `HopDongThueID` int(11) NOT NULL,
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



# Dump of table hd_uyquyen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `hd_uyquyen`;

CREATE TABLE `hd_uyquyen` (
  `HopDongUyQuyenID` int(11) NOT NULL,
  `PhamViUyQuyen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanUyQuyen` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiHanKetThucUyQuyen` date DEFAULT NULL,
  `UyQuyenTuNgay` date DEFAULT NULL,
  `ThuLaoPhaiTra` double DEFAULT NULL,
  `NgayCoHieuLuc` date DEFAULT NULL,
  `CacThoaThuanKhac` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`HopDongUyQuyenID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table hopdong_duongsu_a
# ------------------------------------------------------------

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



# Dump of table hopdong_duongsu_b
# ------------------------------------------------------------

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



# Dump of table hopdong_duongsu_c
# ------------------------------------------------------------

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



# Dump of table hopdong_taisan_duongsu
# ------------------------------------------------------------

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



# Dump of table tbl_functiondetails
# ------------------------------------------------------------

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



# Dump of table tbl_functions
# ------------------------------------------------------------

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



# Dump of table tbl_logdetails
# ------------------------------------------------------------

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



# Dump of table tbl_logs
# ------------------------------------------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tbl_logs` WRITE;
/*!40000 ALTER TABLE `tbl_logs` DISABLE KEYS */;

INSERT INTO `tbl_logs` (`LogID`, `TenDangNhap`, `ActionName`, `ActionContent`, `ActionTime`, `FormLamViec`, `FormLamViecTen`)
VALUES
	(1,'admin','View','Đăng nhập thành công','2016-03-10 22:12:02','LoginAdmin','Đăng nhập'),
	(2,'admin','View','Đăng nhập thành công','2016-03-11 16:23:46','LoginAdmin','Đăng nhập'),
	(3,'admin','View','Đăng nhập thành công','2016-03-11 16:28:43','LoginAdmin','Đăng nhập');

/*!40000 ALTER TABLE `tbl_logs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_nhatkysaoluu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_nhatkysaoluu`;

CREATE TABLE `tbl_nhatkysaoluu` (
  `SaoLuuID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenSaoLuu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgaySaoLuu` datetime DEFAULT NULL,
  `TaiKhoanSaoLuu` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuongDan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SaoLuuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table tbl_nhomtaikhoan
# ------------------------------------------------------------

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



# Dump of table tbl_taikhoan
# ------------------------------------------------------------

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

LOCK TABLES `tbl_taikhoan` WRITE;
/*!40000 ALTER TABLE `tbl_taikhoan` DISABLE KEYS */;

INSERT INTO `tbl_taikhoan` (`TenDangNhap`, `MatKhau`, `HoTen`, `SoDienThoai`, `Email`, `DiaChi`, `NgayCapNhat`, `NhomID`, `ListHuyenQuanLy`, `ListXaQuanLy`, `AllXa`, `LastLogin`, `UserToken`, `LastTokenOnline`, `NguoiTaoTaiKhoan`, `Locked`, `DonViCongTac`, `ChucVu`, `DaXoa`)
VALUES
	('admin','9F10A1F536DA3A7E47B8B51B5133C8D4','Administrator','909123123','admin@gmail.com','',NULL,NULL,NULL,NULL,1,'2016-03-11 16:28:43',0,NULL,'admin',0,'Đơn vị','Chức vụ',0);

/*!40000 ALTER TABLE `tbl_taikhoan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_thamsohethong
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_thamsohethong`;

CREATE TABLE `tbl_thamsohethong` (
  `ParamID` int(11) NOT NULL AUTO_INCREMENT,
  `ParamMa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParamTen` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParamValue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Locked` tinyint(1) DEFAULT NULL,
  `ParamType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ParamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `tbl_thamsohethong` WRITE;
/*!40000 ALTER TABLE `tbl_thamsohethong` DISABLE KEYS */;

INSERT INTO `tbl_thamsohethong` (`ParamID`, `ParamMa`, `ParamTen`, `ParamValue`, `Locked`, `ParamType`)
VALUES
	(1,'masotinh','Mã số tỉnh hiện hành','38',1,NULL),
	(2,'thumucchuataptindinhkem','Thư mục tập tin đính kèm','C:/Program Files/Apache Software Foundation/Tomcat 7.0/webapps/LuuTruData',0,NULL),
	(3,'thumucchuabaocao','Thư mục chứa báo cáo','D:/Workings/LuuTruData/reports/',0,NULL),
	(4,'prefixmd5','Prefix MD5','HP1@#',0,NULL),
	(5,'webname','TỈNH ĐẮK LẮK','TỈNH ĐẮK LẮK',1,NULL),
	(6,'usernamedb','Tài khoản mysql','root',1,NULL),
	(7,'passworddb','Mật khẩu mysql','123456',1,NULL),
	(8,'databasename','Tên database','sotuphapdaklak',1,NULL),
	(9,'pathsettupmysql','Đường dẫn cài đặt mysql','C:/Program Files/MySQL/MySQL Server 5.5/bin/mysqldump.exe',1,NULL);

/*!40000 ALTER TABLE `tbl_thamsohethong` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ts_batdongsankhongcotaisanganlienvoidat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_batdongsankhongcotaisanganlienvoidat`;

CREATE TABLE `ts_batdongsankhongcotaisanganlienvoidat` (
  `TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID` int(11) NOT NULL,
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



# Dump of table ts_beca
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_beca`;

CREATE TABLE `ts_beca` (
  `TaiSanBeCaID` int(11) NOT NULL,
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



# Dump of table ts_canho
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_canho`;

CREATE TABLE `ts_canho` (
  `TaiSanCanHoID` int(11) NOT NULL,
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



# Dump of table ts_congtrinhkientruc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_congtrinhkientruc`;

CREATE TABLE `ts_congtrinhkientruc` (
  `TaiSanCongTrinhKienTrucID` int(11) NOT NULL,
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



# Dump of table ts_cophieu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_cophieu`;

CREATE TABLE `ts_cophieu` (
  `TaiSanCoPhieuID` int(11) NOT NULL,
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



# Dump of table ts_maybay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_maybay`;

CREATE TABLE `ts_maybay` (
  `TaiSanMayBayID` int(11) NOT NULL,
  `TenPhuongTien` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NgayCapGiayDangKy` date DEFAULT NULL,
  `NoiCapGiayDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanMayBayID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ts_maymoc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_maymoc`;

CREATE TABLE `ts_maymoc` (
  `TaiSanMayMocID` int(11) NOT NULL,
  `NhanHieu` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoMay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongSuat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiCheTao` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKiem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanMayMocID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ts_motoxemay
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_motoxemay`;

CREATE TABLE `ts_motoxemay` (
  `TaiSanMoToXeMayID` int(11) NOT NULL,
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



# Dump of table ts_nha
# ------------------------------------------------------------

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



# Dump of table ts_oto
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_oto`;

CREATE TABLE `ts_oto` (
  `TaiSanOToID` int(11) NOT NULL,
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



# Dump of table ts_sotietkiem
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_sotietkiem`;

CREATE TABLE `ts_sotietkiem` (
  `TaiSanSoTietKiemID` int(11) NOT NULL,
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



# Dump of table ts_taisan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_taisan`;

CREATE TABLE `ts_taisan` (
  `TaiSanID` int(11) NOT NULL,
  `LoaiTaiSanID` int(11) DEFAULT NULL,
  `TenPhieuTaiSan` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  CONSTRAINT `ts_taisan_ibfk_19` FOREIGN KEY (`TaiSanOToID`) REFERENCES `ts_oto` (`TaiSanOToID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_10` FOREIGN KEY (`TaiSanNhaID`) REFERENCES `ts_nha` (`TaiSanNhaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_12` FOREIGN KEY (`TaiSanSoTietKiemID`) REFERENCES `ts_sotietkiem` (`TaiSanSoTietKiemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_13` FOREIGN KEY (`TaiSanLaBatDongSanKhacID`) REFERENCES `ts_sotietkiem` (`TaiSanSoTietKiemID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_14` FOREIGN KEY (`TaiSanTauBienID`) REFERENCES `ts_taubien` (`TaiSanTauBienID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_15` FOREIGN KEY (`TaiSanTauCaID`) REFERENCES `ts_tauca` (`TaiSanTauCaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_16` FOREIGN KEY (`TaiSanTauKeoGheThuyenID`) REFERENCES `ts_taukeoghethuyen` (`TaiSanTauKeoGheThuyenID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_17` FOREIGN KEY (`TaiSanTraiPhieuID`) REFERENCES `ts_traiphieu` (`TaiSanTraiPhieuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_18` FOREIGN KEY (`LoaiTaiSanID`) REFERENCES `dm_loaitaisan` (`LoaiTaiSanID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_2` FOREIGN KEY (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`) REFERENCES `ts_batdongsankhongcotaisanganlienvoidat` (`TaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_3` FOREIGN KEY (`TaiSanBeCaID`) REFERENCES `ts_beca` (`TaiSanBeCaID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_4` FOREIGN KEY (`TaiSanCanHoID`) REFERENCES `ts_canho` (`TaiSanCanHoID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_5` FOREIGN KEY (`TaiSanCongTrinhKienTrucID`) REFERENCES `ts_congtrinhkientruc` (`TaiSanCongTrinhKienTrucID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_6` FOREIGN KEY (`TaiSanCoPhieuID`) REFERENCES `ts_cophieu` (`TaiSanCoPhieuID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_7` FOREIGN KEY (`TaiSanMayBayID`) REFERENCES `ts_maybay` (`TaiSanMayBayID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_8` FOREIGN KEY (`TaiSanMayMocID`) REFERENCES `ts_maymoc` (`TaiSanMayMocID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ts_taisan_ibfk_9` FOREIGN KEY (`TaiSanMoToXeMayID`) REFERENCES `ts_motoxemay` (`TaiSanMoToXeMayID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ts_taisanlabatdongsankhac
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_taisanlabatdongsankhac`;

CREATE TABLE `ts_taisanlabatdongsankhac` (
  `TaiSanBatDongSanKhacID` int(11) NOT NULL,
  `DacDiemTaiSan` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TaiSanBatDongSanKhacID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table ts_taubien
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_taubien`;

CREATE TABLE `ts_taubien` (
  `TaiSanTauBienID` int(11) NOT NULL,
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



# Dump of table ts_tauca
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_tauca`;

CREATE TABLE `ts_tauca` (
  `TaiSanTauCaID` int(11) NOT NULL,
  `TenTau` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SoHieu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BienKiemSoat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanDangKy` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LoaiTau` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CongDung` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDong` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NamDong` int(4) DEFAULT NULL,
  `MauThietKe` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CoQuanThietke` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
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



# Dump of table ts_taukeoghethuyen
# ------------------------------------------------------------

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



# Dump of table ts_traiphieu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ts_traiphieu`;

CREATE TABLE `ts_traiphieu` (
  `TaiSanTraiPhieuID` int(11) NOT NULL,
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
  PRIMARY KEY (`TaiSanTraiPhieuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

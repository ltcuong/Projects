package entity;

import java.io.Serializable;
import java.util.Date;

public class TSNha implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_DIACHITAISAN = "#DIACHITAISAN";
	public static final String TS_THUADATSO = "#THUADATSO";
	public static final String TS_TOBANDOSO = "#TOBANDOSO";
	public static final String TS_DIENTICHSUDUNG = "#DIENTICHSUDUNG";
	public static final String TS_DIENTICHSUDUNGBANGCHU = "#DIENTICHSUDUNGBANGCHU";
	public static final String TS_DIENTICHSUDUNGCHUNG = "#DIENTICHSUDUNGCHUNG";
	public static final String TS_DIENTICHSUDUNGRIENG = "#DIENTICHSUDUNGRIENG";
	public static final String TS_MUCDICHSUDUNG = "#MUCDICHSUDUNG";
	public static final String TS_THOIHANSUDUNG = "#THOIHANSUDUNG";
	
	public static final String TS_THOIHANTHUEDATTUNGAY = "#THOIHANTHUEDATTUNGAY";
	public static final String TS_THOIHANTHUEDATDENNGAY = "#THOIHANTHUEDATDENNGAY";
	public static final String TS_HOPDONGTHUEDAT = "#HOPDONGTHUEDAT";
	public static final String TS_TRANGTHIETBIGANLIEN = "#TRANGTHIETBIGANLIEN";
	public static final String TS_TRANGTHIETBICHUYEUGANLIEN = "#TRANGTHIETBICHUYEUGANLIEN";
	
	public static final String TS_NGUONGOCSUDUNG = "#NGUONGOCSUDUNG";
	public static final String TS_DIENTICHXAYDUNG = "#DIENTICHXAYDUNG";
	public static final String TS_DIENTICHXAYDUNGBANGCHU = "#DIENTICHXAYDUNGBANGCHU";
	public static final String TS_DIENTICHSAN = "#DIENTICHSAN";
	public static final String TS_DIENTICHSANBANGCHU = "#DIENTICHSANBANGCHU";
	public static final String TS_HANCHEVEQUYENSUDUNGDAT = "#HANCHEVEQUYENSUDUNGDAT";
	public static final String TS_KETCAU = "#KETCAU";
	public static final String TS_NGAYCAPGIAYCNQSDD = "#NGAYCAPGIAYCNQSDD";
	public static final String TS_NOICAPGIAYCNQSDD = "#NOICAPGIAYCNQSDD";
	public static final String TS_VAOSOGIAYCNQSDDSO = "#VAOSOGIAYCNQSDDSO";
	public static final String TS_SOTANG = "#SOTANG";
	public static final String TS_LOAICONGTRINH = "#LOAICONGTRINH";
	public static final String TS_GIAYCNQUYENSOHUUTAISANSO = "#GIAYCNQUYENSOHUUTAISANSO";
	public static final String TS_NGAYCAPGIAYCNQUYENSOHUUTAISAN = "#NGAYCAPGIAYCNQUYENSOHUUTAISAN";
	public static final String TS_NOICAPGIAYCNQUYENSOHUUTAISAN = "#NOICAPGIAYCNQUYENSOHUUTAISAN";
	public static final String TS_DIENTICHGIAODICHMOTPHAN = "#DIENTICHGIAODICHMOTPHAN";
	public static final String TS_DIENTICHGIAODICHMOTPHANBANGCHU = "#DIENTICHGIAODICHMOTPHANBANGCHU";
	
	private Integer taiSanNhaID;
	private String diaChiTaiSan;
	private String thuaDatSo;
	private String toBanDoSo;
	private Double dienTichSuDung;
	private Double dienTichSuDungChung;
	private Double dienTichSuDungRieng;
	private String mucDichSuDung;
	private String thoiHanSuDung;
	private Date thoiHanThueDatTuNgay;
	private Date thoiHanThueDatDenNgay;
	private String hopDongThueDat;
	private String nguonGocSuDung;
	private Double dienTichXayDung;
	private Double dienTichSan;
	private String hanCheVeQuyenSuDungDat;
	private String ketCau;
	private Date ngayCapGiayCNQSDD;
	private String noiCapGiayCNQSDD;
	private String vaoSoGiayCNQSDDSo;
	private Integer soTang;
	private String loaiCongTrinh;
	private String giayCNQuyenSoHuuTaiSanSo;
	private Date ngayCapGiayCNQuyenSoHuuTaiSan;
	private String noiCapGiayCNQuyenSoHuuTaiSan;
	private String trangThietBiGanLien;
	private String trangThietBiChuYeuGanLien;
	private Double dienTichGiaoDichMotPhan;
	private int coGiaoDichMotPhan;

	private TSTaiSan taiSan;

	
	public String getTrangThietBiChuYeuGanLien() {
		return trangThietBiChuYeuGanLien;
	}

	public void setTrangThietBiChuYeuGanLien(String trangThietBiChuYeuGanLien) {
		this.trangThietBiChuYeuGanLien = trangThietBiChuYeuGanLien;
	}

	public Date getThoiHanThueDatTuNgay() {
		return thoiHanThueDatTuNgay;
	}

	public void setThoiHanThueDatTuNgay(Date thoiHanThueDatTuNgay) {
		this.thoiHanThueDatTuNgay = thoiHanThueDatTuNgay;
	}

	public Date getThoiHanThueDatDenNgay() {
		return thoiHanThueDatDenNgay;
	}

	public void setThoiHanThueDatDenNgay(Date thoiHanThueDatDenNgay) {
		this.thoiHanThueDatDenNgay = thoiHanThueDatDenNgay;
	}

	public String getHopDongThueDat() {
		return hopDongThueDat;
	}

	public void setHopDongThueDat(String hopDongThueDat) {
		this.hopDongThueDat = hopDongThueDat;
	}

	public String getTrangThietBiGanLien() {
		return trangThietBiGanLien;
	}

	public void setTrangThietBiGanLien(String trangThietBiGanLien) {
		this.trangThietBiGanLien = trangThietBiGanLien;
	}

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public int getCoGiaoDichMotPhan() {
		return coGiaoDichMotPhan;
	}

	public void setCoGiaoDichMotPhan(int coGiaoDichMotPhan) {
		this.coGiaoDichMotPhan = coGiaoDichMotPhan;
	}

	public Double getDienTichGiaoDichMotPhan() {
		return dienTichGiaoDichMotPhan;
	}

	public void setDienTichGiaoDichMotPhan(Double dienTichGiaoDichMotPhan) {
		this.dienTichGiaoDichMotPhan = dienTichGiaoDichMotPhan;
	}

	public Integer getTaiSanNhaID() {
		return taiSanNhaID;
	}

	public void setTaiSanNhaID(Integer taiSanNhaID) {
		this.taiSanNhaID = taiSanNhaID;
	}

	public String getDiaChiTaiSan() {
		return diaChiTaiSan;
	}

	public void setDiaChiTaiSan(String diaChiTaiSan) {
		this.diaChiTaiSan = diaChiTaiSan;
	}

	public String getThuaDatSo() {
		return thuaDatSo;
	}

	public void setThuaDatSo(String thuaDatSo) {
		this.thuaDatSo = thuaDatSo;
	}

	public String getToBanDoSo() {
		return toBanDoSo;
	}

	public void setToBanDoSo(String toBanDoSo) {
		this.toBanDoSo = toBanDoSo;
	}


	public String getMucDichSuDung() {
		return mucDichSuDung;
	}

	public void setMucDichSuDung(String mucDichSuDung) {
		this.mucDichSuDung = mucDichSuDung;
	}

	public String getThoiHanSuDung() {
		return thoiHanSuDung;
	}

	public void setThoiHanSuDung(String thoiHanSuDung) {
		this.thoiHanSuDung = thoiHanSuDung;
	}

	public String getNguonGocSuDung() {
		return nguonGocSuDung;
	}

	public void setNguonGocSuDung(String nguonGocSuDung) {
		this.nguonGocSuDung = nguonGocSuDung;
	}

	public Double getDienTichSuDung() {
		return dienTichSuDung;
	}

	public void setDienTichSuDung(Double dienTichSuDung) {
		this.dienTichSuDung = dienTichSuDung;
	}

	public Double getDienTichSuDungChung() {
		return dienTichSuDungChung;
	}

	public void setDienTichSuDungChung(Double dienTichSuDungChung) {
		this.dienTichSuDungChung = dienTichSuDungChung;
	}

	public Double getDienTichSuDungRieng() {
		return dienTichSuDungRieng;
	}

	public void setDienTichSuDungRieng(Double dienTichSuDungRieng) {
		this.dienTichSuDungRieng = dienTichSuDungRieng;
	}

	public Double getDienTichXayDung() {
		return dienTichXayDung;
	}

	public void setDienTichXayDung(Double dienTichXayDung) {
		this.dienTichXayDung = dienTichXayDung;
	}

	public Double getDienTichSan() {
		return dienTichSan;
	}

	public void setDienTichSan(Double dienTichSan) {
		this.dienTichSan = dienTichSan;
	}

	public String getHanCheVeQuyenSuDungDat() {
		return hanCheVeQuyenSuDungDat;
	}

	public void setHanCheVeQuyenSuDungDat(String hanCheVeQuyenSuDungDat) {
		this.hanCheVeQuyenSuDungDat = hanCheVeQuyenSuDungDat;
	}

	public String getKetCau() {
		return ketCau;
	}

	public void setKetCau(String ketCau) {
		this.ketCau = ketCau;
	}

	public Date getNgayCapGiayCNQSDD() {
		return ngayCapGiayCNQSDD;
	}

	public void setNgayCapGiayCNQSDD(Date ngayCapGiayCNQSDD) {
		this.ngayCapGiayCNQSDD = ngayCapGiayCNQSDD;
	}

	public String getNoiCapGiayCNQSDD() {
		return noiCapGiayCNQSDD;
	}

	public void setNoiCapGiayCNQSDD(String noiCapGiayCNQSDD) {
		this.noiCapGiayCNQSDD = noiCapGiayCNQSDD;
	}

	public String getVaoSoGiayCNQSDDSo() {
		return vaoSoGiayCNQSDDSo;
	}

	public void setVaoSoGiayCNQSDDSo(String vaoSoGiayCNQSDDSo) {
		this.vaoSoGiayCNQSDDSo = vaoSoGiayCNQSDDSo;
	}

	public Integer getSoTang() {
		return soTang;
	}

	public void setSoTang(Integer soTang) {
		this.soTang = soTang;
	}

	public String getLoaiCongTrinh() {
		return loaiCongTrinh;
	}

	public void setLoaiCongTrinh(String loaiCongTrinh) {
		this.loaiCongTrinh = loaiCongTrinh;
	}

	public String getGiayCNQuyenSoHuuTaiSanSo() {
		return giayCNQuyenSoHuuTaiSanSo;
	}

	public void setGiayCNQuyenSoHuuTaiSanSo(String giayCNQuyenSoHuuTaiSanSo) {
		this.giayCNQuyenSoHuuTaiSanSo = giayCNQuyenSoHuuTaiSanSo;
	}

	public Date getNgayCapGiayCNQuyenSoHuuTaiSan() {
		return ngayCapGiayCNQuyenSoHuuTaiSan;
	}

	public void setNgayCapGiayCNQuyenSoHuuTaiSan(
			Date ngayCapGiayCNQuyenSoHuuTaiSan) {
		this.ngayCapGiayCNQuyenSoHuuTaiSan = ngayCapGiayCNQuyenSoHuuTaiSan;
	}

	public String getNoiCapGiayCNQuyenSoHuuTaiSan() {
		return noiCapGiayCNQuyenSoHuuTaiSan;
	}

	public void setNoiCapGiayCNQuyenSoHuuTaiSan(
			String noiCapGiayCNQuyenSoHuuTaiSan) {
		this.noiCapGiayCNQuyenSoHuuTaiSan = noiCapGiayCNQuyenSoHuuTaiSan;
	}
}

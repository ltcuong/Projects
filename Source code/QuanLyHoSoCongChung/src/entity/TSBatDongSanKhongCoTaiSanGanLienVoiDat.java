package entity;

import java.io.Serializable;
import java.util.Date;

public class TSBatDongSanKhongCoTaiSanGanLienVoiDat implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_DIACHITAISAN = "#DIACHITAISAN";
	public static final String TS_THUADATSO = "#THUADATSO";
	public static final String TS_TOBANDOSO = "#TOBANDOSO";
	public static final String TS_DIENTICH = "#DIENTICH";
	public static final String TS_DIENTICHBANGCHU = "#DIENTICHBANGCHU";
	public static final String TS_HINHTHUCSUDUNGCHUNG = "#HINHTHUCSUDUNGCHUNG";
	public static final String TS_HINHTHUCSUDUNGRIENG = "#HINHTHUCSUDUNGRIENG";
	public static final String TS_MUCDICHSUDUNG = "#MUCDICHSUDUNG";
	public static final String TS_THOIHANSUDUNG = "#THOIHANSUDUNG";
	public static final String TS_NGUONGOCSUDUNG = "#NGUONGOCSUDUNG";
	public static final String TS_NGAYCAPGIAYCNQUYENSUDUNGDAT = "#NGAYCAPGIAYCNQUYENSUDUNGDAT";
	public static final String TS_NOICAPGIAYCNQUYENSUDUNGDAT = "#NOICAPGIAYCNQUYENSUDUNGDAT";
	public static final String TS_VAOSOCAPGIAYCNQUYENSUDUNGDATSO = "#VAOSOCAPGIAYCNQUYENSUDUNGDATSO";
	public static final String TS_HANCHEQUYENSUDUNGDAT = "#HANCHEQUYENSUDUNGDAT";
	public static final String TS_DIENTICHGIAODICHMOTPHAN = "#DIENTICHGIAODICHMOTPHAN";
	public static final String TS_DIENTICHGIAODICHMOTPHANBANGCHU = "#DIENTICHGIAODICHMOTPHANBANGCHU";
	
	
	private Integer taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID;
	private String diaChiTaiSan;
	private String thuaDatSo;
	private String toBanDoSo;
	private Double dienTich;
	private Double hinhThucSuDungChung;
	private Double hinhThucSuDungRieng;
	private String mucDichSuDung;
	private String thoiHanSuDung;
	private String nguonGocSuDung;
	private Date ngayCapGiayCNQuyenSuDungDat;
	private String noiCapGiayCNQuyenSuDungDat;
	private String vaoSoCapGiayCNQuyenSuDungDatSo;
	private String hanCheQuyenSuDungDat;
	private Double dienTichGiaoDichMotPhan;
	private int coGiaoDichMotPhan;
	private int coTaiSanGanLien;
	private Integer loaiTaiSanGanLienID;

	private Integer taiSanGanLienNhaID;
	private Integer taiSanGanLienCongTrinhKienTrucID;

	private TSTaiSan taiSan;
	private TSNha taiSanNhaGanLien;
	private TSCongTrinhKienTruc taiSanCongTrinhKienTrucGanLien;

	public int getCoTaiSanGanLien() {
		return coTaiSanGanLien;
	}

	public void setCoTaiSanGanLien(int coTaiSanGanLien) {
		this.coTaiSanGanLien = coTaiSanGanLien;
	}

	public Integer getLoaiTaiSanGanLienID() {
		return loaiTaiSanGanLienID;
	}

	public void setLoaiTaiSanGanLienID(Integer loaiTaiSanGanLienID) {
		this.loaiTaiSanGanLienID = loaiTaiSanGanLienID;
	}

	public TSNha getTaiSanNhaGanLien() {
		return taiSanNhaGanLien;
	}

	public void setTaiSanNhaGanLien(TSNha taiSanNhaGanLien) {
		this.taiSanNhaGanLien = taiSanNhaGanLien;
	}

	public TSCongTrinhKienTruc getTaiSanCongTrinhKienTrucGanLien() {
		return taiSanCongTrinhKienTrucGanLien;
	}

	public void setTaiSanCongTrinhKienTrucGanLien(
			TSCongTrinhKienTruc taiSanCongTrinhKienTrucGanLien) {
		this.taiSanCongTrinhKienTrucGanLien = taiSanCongTrinhKienTrucGanLien;
	}

	public Integer getTaiSanGanLienNhaID() {
		return taiSanGanLienNhaID;
	}

	public void setTaiSanGanLienNhaID(Integer taiSanGanLienNhaID) {
		this.taiSanGanLienNhaID = taiSanGanLienNhaID;
	}

	public Integer getTaiSanGanLienCongTrinhKienTrucID() {
		return taiSanGanLienCongTrinhKienTrucID;
	}

	public void setTaiSanGanLienCongTrinhKienTrucID(
			Integer taiSanGanLienCongTrinhKienTrucID) {
		this.taiSanGanLienCongTrinhKienTrucID = taiSanGanLienCongTrinhKienTrucID;
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

	public Integer getTaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID() {
		return taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID;
	}

	public void setTaiSanBatDongSanKhongCoTaiSanGanLienVoiDatID(
			Integer taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID) {
		this.taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID = taiSanBatDongSanKhongCoTaiSanGanLienVoiDatID;
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

	public Double getDienTich() {
		return dienTich;
	}

	public void setDienTich(Double dienTich) {
		this.dienTich = dienTich;
	}

	public Double getHinhThucSuDungChung() {
		return hinhThucSuDungChung;
	}

	public void setHinhThucSuDungChung(Double hinhThucSuDungChung) {
		this.hinhThucSuDungChung = hinhThucSuDungChung;
	}

	public Double getHinhThucSuDungRieng() {
		return hinhThucSuDungRieng;
	}

	public void setHinhThucSuDungRieng(Double hinhThucSuDungRieng) {
		this.hinhThucSuDungRieng = hinhThucSuDungRieng;
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

	public Date getNgayCapGiayCNQuyenSuDungDat() {
		return ngayCapGiayCNQuyenSuDungDat;
	}

	public void setNgayCapGiayCNQuyenSuDungDat(Date ngayCapGiayCNQuyenSuDungDat) {
		this.ngayCapGiayCNQuyenSuDungDat = ngayCapGiayCNQuyenSuDungDat;
	}

	public String getNoiCapGiayCNQuyenSuDungDat() {
		return noiCapGiayCNQuyenSuDungDat;
	}

	public void setNoiCapGiayCNQuyenSuDungDat(String noiCapGiayCNQuyenSuDungDat) {
		this.noiCapGiayCNQuyenSuDungDat = noiCapGiayCNQuyenSuDungDat;
	}

	public String getVaoSoCapGiayCNQuyenSuDungDatSo() {
		return vaoSoCapGiayCNQuyenSuDungDatSo;
	}

	public void setVaoSoCapGiayCNQuyenSuDungDatSo(
			String vaoSoCapGiayCNQuyenSuDungDatSo) {
		this.vaoSoCapGiayCNQuyenSuDungDatSo = vaoSoCapGiayCNQuyenSuDungDatSo;
	}

	public String getHanCheQuyenSuDungDat() {
		return hanCheQuyenSuDungDat;
	}

	public void setHanCheQuyenSuDungDat(String hanCheQuyenSuDungDat) {
		this.hanCheQuyenSuDungDat = hanCheQuyenSuDungDat;
	}
}

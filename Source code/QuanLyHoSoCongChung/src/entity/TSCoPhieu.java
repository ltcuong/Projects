package entity;

import java.io.Serializable;
import java.util.Date;

public class TSCoPhieu implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_CTYPHATHANHCOPHIEU = "#CTYPHATHANHCOPHIEU";
	public static final String TS_DIACHICONGTY = "#DIACHICONGTY";
	public static final String TS_MENHGIA = "#MENHGIA";
	public static final String TS_TONGMENHGIA = "#TONGMENHGIA";
	public static final String TS_SODANGKY = "#SODANGKY";
	public static final String TS_NGAYPHATHANH = "#NGAYPHATHANH";
	public static final String TS_LOAICOPHIEU = "#LOAICOPHIEU";
	public static final String TS_TENCODONG = "#TENCODONG";
	public static final String TS_DIACHICODONG = "#DIACHICODONG";
	public static final String TS_LOAIGIAYTOID = "#LOAIGIAYTOID";
	public static final String TS_SOGIAYTO = "#SOGIAYTO";
	public static final String TS_NGAYCAPGIAYTO = "#NGAYCAPGIAYTO";
	public static final String TS_NOICAPGIAYTO = "#NOICAPGIAYTO";

	private Integer taiSanCoPhieuID;
	private String ctyPhatHanhCoPhieu;
	private String diaChiCongTy;
	private Double menhGia;
	private Double tongMenhGia;
	private String soDangKy;
	private Date ngayPhatHanh;
	private String loaiCoPhieu;
	private String tenCoDong;
	private String diaChiCoDong;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private Date ngayCapGiayTo;
	private String noiCapGiayTo;

	private DMLoaiGiayTo loaiGiayTo;
	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public DMLoaiGiayTo getLoaiGiayTo() {
		return loaiGiayTo;
	}

	public void setLoaiGiayTo(DMLoaiGiayTo loaiGiayTo) {
		this.loaiGiayTo = loaiGiayTo;
	}

	public Integer getTaiSanCoPhieuID() {
		return taiSanCoPhieuID;
	}

	public void setTaiSanCoPhieuID(Integer taiSanCoPhieuID) {
		this.taiSanCoPhieuID = taiSanCoPhieuID;
	}

	public String getCtyPhatHanhCoPhieu() {
		return ctyPhatHanhCoPhieu;
	}

	public void setCtyPhatHanhCoPhieu(String ctyPhatHanhCoPhieu) {
		this.ctyPhatHanhCoPhieu = ctyPhatHanhCoPhieu;
	}

	public String getDiaChiCongTy() {
		return diaChiCongTy;
	}

	public void setDiaChiCongTy(String diaChiCongTy) {
		this.diaChiCongTy = diaChiCongTy;
	}

	public Double getMenhGia() {
		return menhGia;
	}

	public void setMenhGia(Double menhGia) {
		this.menhGia = menhGia;
	}

	public Double getTongMenhGia() {
		return tongMenhGia;
	}

	public void setTongMenhGia(Double tongMenhGia) {
		this.tongMenhGia = tongMenhGia;
	}

	public String getSoDangKy() {
		return soDangKy;
	}

	public void setSoDangKy(String soDangKy) {
		this.soDangKy = soDangKy;
	}

	public Date getNgayPhatHanh() {
		return ngayPhatHanh;
	}

	public void setNgayPhatHanh(Date ngayPhatHanh) {
		this.ngayPhatHanh = ngayPhatHanh;
	}

	public String getLoaiCoPhieu() {
		return loaiCoPhieu;
	}

	public void setLoaiCoPhieu(String loaiCoPhieu) {
		this.loaiCoPhieu = loaiCoPhieu;
	}

	public String getTenCoDong() {
		return tenCoDong;
	}

	public void setTenCoDong(String tenCoDong) {
		this.tenCoDong = tenCoDong;
	}

	public String getDiaChiCoDong() {
		return diaChiCoDong;
	}

	public void setDiaChiCoDong(String diaChiCoDong) {
		this.diaChiCoDong = diaChiCoDong;
	}

	public Integer getLoaiGiayToID() {
		return loaiGiayToID;
	}

	public void setLoaiGiayToID(Integer loaiGiayToID) {
		this.loaiGiayToID = loaiGiayToID;
	}

	public String getSoGiayTo() {
		return soGiayTo;
	}

	public void setSoGiayTo(String soGiayTo) {
		this.soGiayTo = soGiayTo;
	}

	public Date getNgayCapGiayTo() {
		return ngayCapGiayTo;
	}

	public void setNgayCapGiayTo(Date ngayCapGiayTo) {
		this.ngayCapGiayTo = ngayCapGiayTo;
	}

	public String getNoiCapGiayTo() {
		return noiCapGiayTo;
	}

	public void setNoiCapGiayTo(String noiCapGiayTo) {
		this.noiCapGiayTo = noiCapGiayTo;
	}
}

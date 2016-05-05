package entity;

import java.io.Serializable;
import java.util.Date;

public class TSSoTietKiem implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_NGAYGUI = "#NGAYGUI";
	public static final String TS_SODUTIENGUI = "#SODUTIENGUI";
	public static final String TS_KYHAN = "#KYHAN";
	public static final String TS_LAIXUAT = "#LAIXUAT";
	public static final String TS_LOAITIEN = "#LOAITIEN";
	public static final String TS_NGANHANGCAP = "#NGANHANGCAP";
	public static final String TS_HOTENCHUSO = "#HOTENCHUSO";
	public static final String TS_DIACHI = "#DIACHI";
	public static final String TS_LOAIGIAYTOID = "#LOAIGIAYTOID";
	public static final String TS_SOGIAYTO = "#SOGIAYTO";
	public static final String TS_NGAYCAPGIAYTO = "#NGAYCAPGIAYTO";
	public static final String TS_NOICAPGIAYTO = "#NOICAPGIAYTO";

	private Integer taiSanSoTietKiemID;
	private Date ngayGui;
	private Double soDuTienGui;
	private String kyHan;
	private String laiXuat;
	private String loaiTien;
	private String nganHangCap;
	private String hoTenChuSo;
	private String diaChi;
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

	public Integer getTaiSanSoTietKiemID() {
		return taiSanSoTietKiemID;
	}

	public void setTaiSanSoTietKiemID(Integer taiSanSoTietKiemID) {
		this.taiSanSoTietKiemID = taiSanSoTietKiemID;
	}

	public Date getNgayGui() {
		return ngayGui;
	}

	public void setNgayGui(Date ngayGui) {
		this.ngayGui = ngayGui;
	}

	public Double getSoDuTienGui() {
		return soDuTienGui;
	}

	public void setSoDuTienGui(Double soDuTienGui) {
		this.soDuTienGui = soDuTienGui;
	}

	public String getKyHan() {
		return kyHan;
	}

	public void setKyHan(String kyHan) {
		this.kyHan = kyHan;
	}

	public String getLaiXuat() {
		return laiXuat;
	}

	public void setLaiXuat(String laiXuat) {
		this.laiXuat = laiXuat;
	}

	public String getLoaiTien() {
		return loaiTien;
	}

	public void setLoaiTien(String loaiTien) {
		this.loaiTien = loaiTien;
	}

	public String getNganHangCap() {
		return nganHangCap;
	}

	public void setNganHangCap(String nganHangCap) {
		this.nganHangCap = nganHangCap;
	}

	public String getHoTenChuSo() {
		return hoTenChuSo;
	}

	public void setHoTenChuSo(String hoTenChuSo) {
		this.hoTenChuSo = hoTenChuSo;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
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

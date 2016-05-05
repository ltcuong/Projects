package entity;

import java.io.Serializable;
import java.util.Date;

public class TSTraiPhieu implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_LOAITRAIPHIEU = "#LOAITRAIPHIEU";
	public static final String TS_NGAYPHATHANH = "#NGAYPHATHANH";
	public static final String TS_NOIPHATHANHTRAIPHIEU = "#NOIPHATHANHTRAIPHIEU";
	public static final String TS_MENHGIA = "#MENHGIA";
	public static final String TS_KYHAN = "#KYHAN";
	public static final String TS_LAISUAT = "#LAISUAT";
	public static final String TS_THOIHANTHANHTOAN = "#THOIHANTHANHTOAN";
	public static final String TS_HOTEN = "#HOTEN";
	public static final String TS_DIACHI = "#DIACHI";
	public static final String TS_LOAIGIAYTOID = "#LOAIGIAYTOID";
	public static final String TS_SOGIAYTO = "#SOGIAYTO";
	public static final String TS_NOICAPGIAYTO = "#NOICAPGIAYTO";
	public static final String TS_NGAYCAPGIAYTO = "#NGAYCAPGIAYTO";

	private Integer taiSanTraiPhieuID;
	private String loaiTraiPhieu;
	private Date ngayPhatHanh;
	private String noiPhatHanhTraiPhieu;
	private String menhGia;
	private String kyHan;
	private String laiSuat;
	private String thoiHanThanhToan;
	private String hoTen;
	private String diaChi;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private String noiCapGiayTo;
	private Date ngayCapGiayTo;

	private DMLoaiGiayTo loaiGiayTo;
	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public Integer getTaiSanTraiPhieuID() {
		return taiSanTraiPhieuID;
	}

	public void setTaiSanTraiPhieuID(Integer taiSanTraiPhieuID) {
		this.taiSanTraiPhieuID = taiSanTraiPhieuID;
	}

	public String getLoaiTraiPhieu() {
		return loaiTraiPhieu;
	}

	public void setLoaiTraiPhieu(String loaiTraiPhieu) {
		this.loaiTraiPhieu = loaiTraiPhieu;
	}

	public Date getNgayPhatHanh() {
		return ngayPhatHanh;
	}

	public void setNgayPhatHanh(Date ngayPhatHanh) {
		this.ngayPhatHanh = ngayPhatHanh;
	}

	public String getNoiPhatHanhTraiPhieu() {
		return noiPhatHanhTraiPhieu;
	}

	public void setNoiPhatHanhTraiPhieu(String noiPhatHanhTraiPhieu) {
		this.noiPhatHanhTraiPhieu = noiPhatHanhTraiPhieu;
	}

	public String getMenhGia() {
		return menhGia;
	}

	public void setMenhGia(String menhGia) {
		this.menhGia = menhGia;
	}

	public String getKyHan() {
		return kyHan;
	}

	public void setKyHan(String kyHan) {
		this.kyHan = kyHan;
	}

	public String getLaiSuat() {
		return laiSuat;
	}

	public void setLaiSuat(String laiSuat) {
		this.laiSuat = laiSuat;
	}

	public String getThoiHanThanhToan() {
		return thoiHanThanhToan;
	}

	public void setThoiHanThanhToan(String thoiHanThanhToan) {
		this.thoiHanThanhToan = thoiHanThanhToan;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
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

	public String getNoiCapGiayTo() {
		return noiCapGiayTo;
	}

	public void setNoiCapGiayTo(String noiCapGiayTo) {
		this.noiCapGiayTo = noiCapGiayTo;
	}

	public Date getNgayCapGiayTo() {
		return ngayCapGiayTo;
	}

	public void setNgayCapGiayTo(Date ngayCapGiayTo) {
		this.ngayCapGiayTo = ngayCapGiayTo;
	}

	public DMLoaiGiayTo getLoaiGiayTo() {
		return loaiGiayTo;
	}

	public void setLoaiGiayTo(DMLoaiGiayTo loaiGiayTo) {
		this.loaiGiayTo = loaiGiayTo;
	}

}

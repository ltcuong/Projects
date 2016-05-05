package entity;

import java.io.Serializable;
import java.util.Date;

public class TSMayBay implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_TENPHUONGTIEN = "#TENPHUONGTIEN";
	public static final String TS_DACDIEMTAISAN = "#DACDIEMTAISAN";
	public static final String TS_NGAYCAPGIAYDANGKY = "#NGAYCAPGIAYDANGKY";
	public static final String TS_NOICAPGIAYDANGKY = "#NOICAPGIAYDANGKY";

	private Integer taiSanMayBayID;
	private String tenPhuongTien;
	private String dacDiemTaiSan;
	private Date ngayCapGiayDangKy;
	private String noiCapGiayDangKy;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public Integer getTaiSanMayBayID() {
		return taiSanMayBayID;
	}

	public void setTaiSanMayBayID(Integer taiSanMayBayID) {
		this.taiSanMayBayID = taiSanMayBayID;
	}

	public String getTenPhuongTien() {
		return tenPhuongTien;
	}

	public void setTenPhuongTien(String tenPhuongTien) {
		this.tenPhuongTien = tenPhuongTien;
	}

	public String getDacDiemTaiSan() {
		return dacDiemTaiSan;
	}

	public void setDacDiemTaiSan(String dacDiemTaiSan) {
		this.dacDiemTaiSan = dacDiemTaiSan;
	}

	public Date getNgayCapGiayDangKy() {
		return ngayCapGiayDangKy;
	}

	public void setNgayCapGiayDangKy(Date ngayCapGiayDangKy) {
		this.ngayCapGiayDangKy = ngayCapGiayDangKy;
	}

	public String getNoiCapGiayDangKy() {
		return noiCapGiayDangKy;
	}

	public void setNoiCapGiayDangKy(String noiCapGiayDangKy) {
		this.noiCapGiayDangKy = noiCapGiayDangKy;
	}
}

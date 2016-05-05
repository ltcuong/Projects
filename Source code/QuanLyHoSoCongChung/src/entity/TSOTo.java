package entity;

import java.io.Serializable;
import java.util.Date;

public class TSOTo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static final String TS_TENPHIEUTAISAN = "#TENPHIEUTAISAN";
	public static final String TS_TENKHOATAISAN = "#TENKHOATAISAN";
	public static final String TS_NHANHIEU = "#NHANHIEU";
	public static final String TS_LOAIXE = "#LOAIXE";
	public static final String TS_MAUSON = "#MAUSON";
	public static final String TS_SOCHONGOI = "#SOCHONGOI";
	public static final String TS_NAMSANXUAT = "#NAMSANXUAT";
	public static final String TS_SOKHUNG = "#SOKHUNG";
	public static final String TS_SOMAY = "#SOMAY";
	public static final String TS_TAITRONG = "#TAITRONG";
	public static final String TS_TUTRONG = "#TUTRONG";
	public static final String TS_GIAYDANGKYSO = "#GIAYDANGKYSO";
	public static final String TS_NGAYCAPGIAYDANGKY = "#NGAYCAPGIAYDANGKY";
	public static final String TS_NOICAPGIAYDANGKY = "#NOICAPGIAYDANGKY	";

	private Integer taiSanOToID;
	private String nhanHieu;
	private String loaiXe;
	private String mauSon;
	private Integer soChoNgoi;
	private Integer namSanXuat;
	private String soKhung;
	private String soMay;
	private String taiTrong;
	private String tuTrong;
	private String giayDangKySo;
	private Date ngayCapGiayDangKy;
	private String noiCapGiayDangKy;

	private TSTaiSan taiSan;

	public TSTaiSan getTaiSan() {
		return taiSan;
	}

	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}

	public Integer getTaiSanOToID() {
		return taiSanOToID;
	}

	public void setTaiSanOToID(Integer taiSanOToID) {
		this.taiSanOToID = taiSanOToID;
	}

	public String getNhanHieu() {
		return nhanHieu;
	}

	public void setNhanHieu(String nhanHieu) {
		this.nhanHieu = nhanHieu;
	}

	public String getLoaiXe() {
		return loaiXe;
	}

	public void setLoaiXe(String loaiXe) {
		this.loaiXe = loaiXe;
	}

	public String getMauSon() {
		return mauSon;
	}

	public void setMauSon(String mauSon) {
		this.mauSon = mauSon;
	}

	public Integer getSoChoNgoi() {
		return soChoNgoi;
	}

	public void setSoChoNgoi(Integer soChoNgoi) {
		this.soChoNgoi = soChoNgoi;
	}

	public Integer getNamSanXuat() {
		return namSanXuat;
	}

	public void setNamSanXuat(Integer namSanXuat) {
		this.namSanXuat = namSanXuat;
	}

	public String getSoKhung() {
		return soKhung;
	}

	public void setSoKhung(String soKhung) {
		this.soKhung = soKhung;
	}

	public String getSoMay() {
		return soMay;
	}

	public void setSoMay(String soMay) {
		this.soMay = soMay;
	}

	public String getTaiTrong() {
		return taiTrong;
	}

	public void setTaiTrong(String taiTrong) {
		this.taiTrong = taiTrong;
	}

	public String getTuTrong() {
		return tuTrong;
	}

	public void setTuTrong(String tuTrong) {
		this.tuTrong = tuTrong;
	}

	public String getGiayDangKySo() {
		return giayDangKySo;
	}

	public void setGiayDangKySo(String giayDangKySo) {
		this.giayDangKySo = giayDangKySo;
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

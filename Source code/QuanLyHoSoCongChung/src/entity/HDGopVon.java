package entity;

import java.io.Serializable;
import java.util.Date;

public class HDGopVon implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongGopVonID;
	private Double giaGopVon;
	private Date ngayThamDinhTaiSan;
	private String mucDichGopVon;
	private String thoiHanGopVon;
	private Date thoiHanKetThucGopVon;
	private Date gopVonTuNgay;
	private String loiNhuanGopVon;
	private String phuongThucThanhToan;
	private String cacThoaThuanKhac;
	private Date ngayCoHieuLuc;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongGopVonID() {
		return hopDongGopVonID;
	}
	public void setHopDongGopVonID(Integer hopDongGopVonID) {
		this.hopDongGopVonID = hopDongGopVonID;
	}
	public Double getGiaGopVon() {
		return giaGopVon;
	}
	public void setGiaGopVon(Double giaGopVon) {
		this.giaGopVon = giaGopVon;
	}
	public Date getNgayThamDinhTaiSan() {
		return ngayThamDinhTaiSan;
	}
	public void setNgayThamDinhTaiSan(Date ngayThamDinhTaiSan) {
		this.ngayThamDinhTaiSan = ngayThamDinhTaiSan;
	}
	public String getMucDichGopVon() {
		return mucDichGopVon;
	}
	public void setMucDichGopVon(String mucDichGopVon) {
		this.mucDichGopVon = mucDichGopVon;
	}
	public String getThoiHanGopVon() {
		return thoiHanGopVon;
	}
	public void setThoiHanGopVon(String thoiHanGopVon) {
		this.thoiHanGopVon = thoiHanGopVon;
	}
	public Date getThoiHanKetThucGopVon() {
		return thoiHanKetThucGopVon;
	}
	public void setThoiHanKetThucGopVon(Date thoiHanKetThucGopVon) {
		this.thoiHanKetThucGopVon = thoiHanKetThucGopVon;
	}
	public Date getGopVonTuNgay() {
		return gopVonTuNgay;
	}
	public void setGopVonTuNgay(Date gopVonTuNgay) {
		this.gopVonTuNgay = gopVonTuNgay;
	}
	public String getLoiNhuanGopVon() {
		return loiNhuanGopVon;
	}
	public void setLoiNhuanGopVon(String loiNhuanGopVon) {
		this.loiNhuanGopVon = loiNhuanGopVon;
	}
	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}
	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}
	
	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}
	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}
	public Date getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}
	public void setNgayCoHieuLuc(Date ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}
}

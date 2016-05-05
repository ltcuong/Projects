package entity;

import java.io.Serializable;
import java.util.Date;

public class HDMuaBan implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongMuaBanID;
	private Double giaMuaBan;
	private String phuongThucThanhToan;
	private Date ngayGiaoTaiSan;
	private Date ngayCoHieuLuc;
	private String cacThoaThuanKhac;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongMuaBanID() {
		return hopDongMuaBanID;
	}
	public void setHopDongMuaBanID(Integer hopDongMuaBanID) {
		this.hopDongMuaBanID = hopDongMuaBanID;
	}
	public Double getGiaMuaBan() {
		return giaMuaBan;
	}
	public void setGiaMuaBan(Double giaMuaBan) {
		this.giaMuaBan = giaMuaBan;
	}
	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}
	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}
	public Date getNgayGiaoTaiSan() {
		return ngayGiaoTaiSan;
	}
	public void setNgayGiaoTaiSan(Date ngayGiaoTaiSan) {
		this.ngayGiaoTaiSan = ngayGiaoTaiSan;
	}
	public Date getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}
	public void setNgayCoHieuLuc(Date ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}
	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}
	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}
}

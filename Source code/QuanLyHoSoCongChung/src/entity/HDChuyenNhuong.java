package entity;

import java.io.Serializable;
import java.util.Date;

public class HDChuyenNhuong implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongChuyenNhuongID;
	private Double giaChuyenNhuong;
	private String phuongThucThanhToan;
	private Date ngayGiaoTaiSan;
	private String cacThoaThuanKhac;
	private Date ngayCoHieuLuc;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongChuyenNhuongID() {
		return hopDongChuyenNhuongID;
	}
	public void setHopDongChuyenNhuongID(Integer hopDongChuyenNhuongID) {
		this.hopDongChuyenNhuongID = hopDongChuyenNhuongID;
	}
	
	public Double getGiaChuyenNhuong() {
		return giaChuyenNhuong;
	}
	public void setGiaChuyenNhuong(Double giaChuyenNhuong) {
		this.giaChuyenNhuong = giaChuyenNhuong;
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

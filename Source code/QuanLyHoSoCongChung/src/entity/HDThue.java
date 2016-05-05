package entity;

import java.io.Serializable;
import java.util.Date;

public class HDThue implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongThueID;
	private String thoiHanThue;
	private Date ngayKetThucChoThue;
	private Date choThueTuNgay;
	private String mucDichThue;
	private Double giaThue;
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
	public Integer getHopDongThueID() {
		return hopDongThueID;
	}
	public void setHopDongThueID(Integer hopDongThueID) {
		this.hopDongThueID = hopDongThueID;
	}
	public String getThoiHanThue() {
		return thoiHanThue;
	}
	public void setThoiHanThue(String thoiHanThue) {
		this.thoiHanThue = thoiHanThue;
	}
	public Date getNgayKetThucChoThue() {
		return ngayKetThucChoThue;
	}
	public void setNgayKetThucChoThue(Date ngayKetThucChoThue) {
		this.ngayKetThucChoThue = ngayKetThucChoThue;
	}
	public Date getChoThueTuNgay() {
		return choThueTuNgay;
	}
	public void setChoThueTuNgay(Date choThueTuNgay) {
		this.choThueTuNgay = choThueTuNgay;
	}
	public String getMucDichThue() {
		return mucDichThue;
	}
	public void setMucDichThue(String mucDichThue) {
		this.mucDichThue = mucDichThue;
	}
	public Double getGiaThue() {
		return giaThue;
	}
	public void setGiaThue(Double giaThue) {
		this.giaThue = giaThue;
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

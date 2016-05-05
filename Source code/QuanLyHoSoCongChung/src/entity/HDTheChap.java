package entity;

import java.io.Serializable;
import java.util.Date;

public class HDTheChap implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongTheChapID;
	private Double soTienDamBao;
	private Double giaTheChap;
	private Date ngayThamDinh;
	private String phuongThucXuLy;
	private String cacThoaThuanKhac;
	private Date ngayCoHieuLuc;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongTheChapID() {
		return hopDongTheChapID;
	}
	public void setHopDongTheChapID(Integer hopDongTheChapID) {
		this.hopDongTheChapID = hopDongTheChapID;
	}
	public Double getSoTienDamBao() {
		return soTienDamBao;
	}
	public void setSoTienDamBao(Double soTienDamBao) {
		this.soTienDamBao = soTienDamBao;
	}
	public Double getGiaTheChap() {
		return giaTheChap;
	}
	public void setGiaTheChap(Double giaTheChap) {
		this.giaTheChap = giaTheChap;
	}
	public Date getNgayThamDinh() {
		return ngayThamDinh;
	}
	public void setNgayThamDinh(Date ngayThamDinh) {
		this.ngayThamDinh = ngayThamDinh;
	}
	
	public String getPhuongThucXuLy() {
		return phuongThucXuLy;
	}
	public void setPhuongThucXuLy(String phuongThucXuLy) {
		this.phuongThucXuLy = phuongThucXuLy;
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

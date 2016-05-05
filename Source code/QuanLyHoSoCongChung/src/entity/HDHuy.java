package entity;

import java.io.Serializable;
import java.util.Date;

public class HDHuy implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongHuyID;
	private Integer huyHopDongID;
	private String soHopDongHuy;
	private String lyDoHuy;
	private String phuongThucGiaoLaiTaiSan;
	private Date ngayGiaoLaiTaiSan;
	private String phuongThucGiaoLaiTien;
	private Date ngayGiaoLaiTien;
	private String boiThuongThietHai;
	private String thoaThuanKhac;
	private String camKetKhac;
	
	
	private HDHopDong huyHopDong;
	private HDHopDong hopDong;

	
	public HDHopDong getHopDong() {
		return hopDong;
	}

	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}

	public Integer getHopDongHuyID() {
		return hopDongHuyID;
	}

	public void setHopDongHuyID(Integer hopDongHuyID) {
		this.hopDongHuyID = hopDongHuyID;
	}

	public Integer getHuyHopDongID() {
		return huyHopDongID;
	}

	public void setHuyHopDongID(Integer huyHopDongID) {
		this.huyHopDongID = huyHopDongID;
	}

	public HDHopDong getHuyHopDong() {
		return huyHopDong;
	}

	public void setHuyHopDong(HDHopDong huyHopDong) {
		this.huyHopDong = huyHopDong;
	}

	public String getSoHopDongHuy() {
		return soHopDongHuy;
	}

	public void setSoHopDongHuy(String soHopDongHuy) {
		this.soHopDongHuy = soHopDongHuy;
	}

	public String getLyDoHuy() {
		return lyDoHuy;
	}

	public void setLyDoHuy(String lyDoHuy) {
		this.lyDoHuy = lyDoHuy;
	}

	public String getPhuongThucGiaoLaiTaiSan() {
		return phuongThucGiaoLaiTaiSan;
	}

	public void setPhuongThucGiaoLaiTaiSan(String phuongThucGiaoLaiTaiSan) {
		this.phuongThucGiaoLaiTaiSan = phuongThucGiaoLaiTaiSan;
	}

	public Date getNgayGiaoLaiTaiSan() {
		return ngayGiaoLaiTaiSan;
	}

	public void setNgayGiaoLaiTaiSan(Date ngayGiaoLaiTaiSan) {
		this.ngayGiaoLaiTaiSan = ngayGiaoLaiTaiSan;
	}

	public String getPhuongThucGiaoLaiTien() {
		return phuongThucGiaoLaiTien;
	}

	public void setPhuongThucGiaoLaiTien(String phuongThucGiaoLaiTien) {
		this.phuongThucGiaoLaiTien = phuongThucGiaoLaiTien;
	}

	public Date getNgayGiaoLaiTien() {
		return ngayGiaoLaiTien;
	}

	public void setNgayGiaoLaiTien(Date ngayGiaoLaiTien) {
		this.ngayGiaoLaiTien = ngayGiaoLaiTien;
	}

	public String getBoiThuongThietHai() {
		return boiThuongThietHai;
	}

	public void setBoiThuongThietHai(String boiThuongThietHai) {
		this.boiThuongThietHai = boiThuongThietHai;
	}

	public String getThoaThuanKhac() {
		return thoaThuanKhac;
	}

	public void setThoaThuanKhac(String thoaThuanKhac) {
		this.thoaThuanKhac = thoaThuanKhac;
	}

	public String getCamKetKhac() {
		return camKetKhac;
	}

	public void setCamKetKhac(String camKetKhac) {
		this.camKetKhac = camKetKhac;
	}
	
}

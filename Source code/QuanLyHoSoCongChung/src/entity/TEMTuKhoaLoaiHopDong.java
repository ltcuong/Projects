package entity;

import java.io.Serializable;

public class TEMTuKhoaLoaiHopDong implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer tuKhoaLoaiHopDongID;
	private String tenTuKhoaLoaiHopDong;
	private String tenHienThiTuKhoaLoaiHopDong;
	private Integer loaiHopDongID;
	
	private DMLoaiHopDong loaiHopDong;
	
	
	public DMLoaiHopDong getLoaiHopDong() {
		return loaiHopDong;
	}
	public void setLoaiHopDong(DMLoaiHopDong loaiHopDong) {
		this.loaiHopDong = loaiHopDong;
	}
	public Integer getTuKhoaLoaiHopDongID() {
		return tuKhoaLoaiHopDongID;
	}
	public void setTuKhoaLoaiHopDongID(Integer tuKhoaLoaiHopDongID) {
		this.tuKhoaLoaiHopDongID = tuKhoaLoaiHopDongID;
	}
	public String getTenTuKhoaLoaiHopDong() {
		return tenTuKhoaLoaiHopDong;
	}
	public void setTenTuKhoaLoaiHopDong(String tenTuKhoaLoaiHopDong) {
		this.tenTuKhoaLoaiHopDong = tenTuKhoaLoaiHopDong;
	}
	public String getTenHienThiTuKhoaLoaiHopDong() {
		return tenHienThiTuKhoaLoaiHopDong;
	}
	public void setTenHienThiTuKhoaLoaiHopDong(String tenHienThiTuKhoaLoaiHopDong) {
		this.tenHienThiTuKhoaLoaiHopDong = tenHienThiTuKhoaLoaiHopDong;
	}
	public Integer getLoaiHopDongID() {
		return loaiHopDongID;
	}
	public void setLoaiHopDongID(Integer loaiHopDongID) {
		this.loaiHopDongID = loaiHopDongID;
	}
}

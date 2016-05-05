package entity;

import java.io.Serializable;

public class TEMTuKhoaLoaiTaiSan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer tuKhoaLoaiTaiSanID;
	private String tenTuKhoaLoaiTaiSan;
	private String tenHienThiTuKhoaLoaiTaiSan;
	private Integer loaiTaiSanID;
	
	private DMLoaiTaiSan loaiTaiSan;

	public Integer getTuKhoaLoaiTaiSanID() {
		return tuKhoaLoaiTaiSanID;
	}

	public void setTuKhoaLoaiTaiSanID(Integer tuKhoaLoaiTaiSanID) {
		this.tuKhoaLoaiTaiSanID = tuKhoaLoaiTaiSanID;
	}

	public String getTenTuKhoaLoaiTaiSan() {
		return tenTuKhoaLoaiTaiSan;
	}

	public void setTenTuKhoaLoaiTaiSan(String tenTuKhoaLoaiTaiSan) {
		this.tenTuKhoaLoaiTaiSan = tenTuKhoaLoaiTaiSan;
	}

	public String getTenHienThiTuKhoaLoaiTaiSan() {
		return tenHienThiTuKhoaLoaiTaiSan;
	}

	public void setTenHienThiTuKhoaLoaiTaiSan(String tenHienThiTuKhoaLoaiTaiSan) {
		this.tenHienThiTuKhoaLoaiTaiSan = tenHienThiTuKhoaLoaiTaiSan;
	}

	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}

	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}

	public DMLoaiTaiSan getLoaiTaiSan() {
		return loaiTaiSan;
	}

	public void setLoaiTaiSan(DMLoaiTaiSan loaiTaiSan) {
		this.loaiTaiSan = loaiTaiSan;
	}
	
}

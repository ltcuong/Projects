package entity;

import java.io.Serializable;

public class TEMTuKhoaLoaiDuongSu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer tuKhoaLoaiDuongSuID;
	private String tenTuKhoaLoaiDuongSu;
	private String tenHienThiTuKhoaLoaiDuongSu;
	private Integer loaiDuongSuID;
	
	private DMLoaiDuongSu loaiDuongSu;

	public Integer getTuKhoaLoaiDuongSuID() {
		return tuKhoaLoaiDuongSuID;
	}

	public void setTuKhoaLoaiDuongSuID(Integer tuKhoaLoaiDuongSuID) {
		this.tuKhoaLoaiDuongSuID = tuKhoaLoaiDuongSuID;
	}

	public String getTenTuKhoaLoaiDuongSu() {
		return tenTuKhoaLoaiDuongSu;
	}

	public void setTenTuKhoaLoaiDuongSu(String tenTuKhoaLoaiDuongSu) {
		this.tenTuKhoaLoaiDuongSu = tenTuKhoaLoaiDuongSu;
	}

	public String getTenHienThiTuKhoaLoaiDuongSu() {
		return tenHienThiTuKhoaLoaiDuongSu;
	}

	public void setTenHienThiTuKhoaLoaiDuongSu(String tenHienThiTuKhoaLoaiDuongSu) {
		this.tenHienThiTuKhoaLoaiDuongSu = tenHienThiTuKhoaLoaiDuongSu;
	}

	public Integer getLoaiDuongSuID() {
		return loaiDuongSuID;
	}

	public void setLoaiDuongSuID(Integer loaiDuongSuID) {
		this.loaiDuongSuID = loaiDuongSuID;
	}

	public DMLoaiDuongSu getLoaiDuongSu() {
		return loaiDuongSu;
	}

	public void setLoaiDuongSu(DMLoaiDuongSu loaiDuongSu) {
		this.loaiDuongSu = loaiDuongSu;
	}
	
}

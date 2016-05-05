package entity;

import java.io.Serializable;

public class DMLoaiTaiSan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loaiTaiSanID;
	private String loaiTaiSanTen;
	private int coGiaoDichMotPhan;
	
	public int getCoGiaoDichMotPhan() {
		return coGiaoDichMotPhan;
	}

	public void setCoGiaoDichMotPhan(int coGiaoDichMotPhan) {
		this.coGiaoDichMotPhan = coGiaoDichMotPhan;
	}

	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}

	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}

	public String getLoaiTaiSanTen() {
		return loaiTaiSanTen;
	}

	public void setLoaiTaiSanTen(String loaiTaiSanTen) {
		this.loaiTaiSanTen = loaiTaiSanTen;
	}
}

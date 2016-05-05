package entity;

import java.io.Serializable;

public class DMLoaiHopDong implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loaiHopDongID;
	private String loaiHopDongTen;
	
	public Integer getLoaiHopDongID() {
		return loaiHopDongID;
	}
	public void setLoaiHopDongID(Integer loaiHopDongID) {
		this.loaiHopDongID = loaiHopDongID;
	}
	public String getLoaiHopDongTen() {
		return loaiHopDongTen;
	}
	public void setLoaiHopDongTen(String loaiHopDongTen) {
		this.loaiHopDongTen = loaiHopDongTen;
	}

}

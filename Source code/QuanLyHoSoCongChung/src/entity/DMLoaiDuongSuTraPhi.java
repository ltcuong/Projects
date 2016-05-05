package entity;

import java.io.Serializable;

public class DMLoaiDuongSuTraPhi implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loaiDuongSuTraPhiID;
	private String loaiDuongSuTraPhiTen;
	private Integer benDoiLapID;
	private int locked;
	
	private DMLoaiDuongSuTraPhi benDoiLap;

	public Integer getLoaiDuongSuTraPhiID() {
		return loaiDuongSuTraPhiID;
	}

	public void setLoaiDuongSuTraPhiID(Integer loaiDuongSuTraPhiID) {
		this.loaiDuongSuTraPhiID = loaiDuongSuTraPhiID;
	}

	public String getLoaiDuongSuTraPhiTen() {
		return loaiDuongSuTraPhiTen;
	}

	public void setLoaiDuongSuTraPhiTen(String loaiDuongSuTraPhiTen) {
		this.loaiDuongSuTraPhiTen = loaiDuongSuTraPhiTen;
	}

	public Integer getBenDoiLapID() {
		return benDoiLapID;
	}

	public void setBenDoiLapID(Integer benDoiLapID) {
		this.benDoiLapID = benDoiLapID;
	}

	public int getLocked() {
		return locked;
	}

	public void setLocked(int locked) {
		this.locked = locked;
	}

	public DMLoaiDuongSuTraPhi getBenDoiLap() {
		return benDoiLap;
	}

	public void setBenDoiLap(DMLoaiDuongSuTraPhi benDoiLap) {
		this.benDoiLap = benDoiLap;
	}
}

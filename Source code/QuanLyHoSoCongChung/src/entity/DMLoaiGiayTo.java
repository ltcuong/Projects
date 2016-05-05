package entity;

import java.io.Serializable;

public class DMLoaiGiayTo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loaiGiayToID;
	private String loaiGiayToTen;
	private int locked;

	
	public Integer getLoaiGiayToID() {
		return loaiGiayToID;
	}
	public void setLoaiGiayToID(Integer loaiGiayToID) {
		this.loaiGiayToID = loaiGiayToID;
	}
	public String getLoaiGiayToTen() {
		return loaiGiayToTen;
	}
	public void setLoaiGiayToTen(String loaiGiayToTen) {
		this.loaiGiayToTen = loaiGiayToTen;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
}

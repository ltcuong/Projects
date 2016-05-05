package entity;

import java.io.Serializable;

public class DMLoaiDuongSu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final int DUONGSU_CANHAN = 1;
	public static final int DUONGSU_TOCHUC = 2;
	
	public static final int DUONGSU_DONGSOHUU = 5;
	public static final int DUONGSU_NGUOIUYQUYEN = 6;
	
	private Integer loaiDuongSuID;
	private String loaiDuongSuTen;
	private int locked;
	
	
	public Integer getLoaiDuongSuID() {
		return loaiDuongSuID;
	}
	public void setLoaiDuongSuID(Integer loaiDuongSuID) {
		this.loaiDuongSuID = loaiDuongSuID;
	}
	public String getLoaiDuongSuTen() {
		return loaiDuongSuTen;
	}
	public void setLoaiDuongSuTen(String loaiDuongSuTen) {
		this.loaiDuongSuTen = loaiDuongSuTen;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
}

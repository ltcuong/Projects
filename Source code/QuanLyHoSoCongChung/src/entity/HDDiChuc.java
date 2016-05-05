package entity;

import java.io.Serializable;

public class HDDiChuc implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongDiChucID;
	private String noiDungDiChuc;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongDiChucID() {
		return hopDongDiChucID;
	}
	public void setHopDongDiChucID(Integer hopDongDiChucID) {
		this.hopDongDiChucID = hopDongDiChucID;
	}
	public String getNoiDungDiChuc() {
		return noiDungDiChuc;
	}
	public void setNoiDungDiChuc(String noiDungDiChuc) {
		this.noiDungDiChuc = noiDungDiChuc;
	}

}

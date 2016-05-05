package entity;

import java.io.Serializable;

public class DMQuocTich implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer quocTichID;
	private String quocTichMa;
	private String quocTichTen;
	private String ghiChu;
	private int locked;
	
	
	public Integer getQuocTichID() {
		return quocTichID;
	}
	public void setQuocTichID(Integer quocTichID) {
		this.quocTichID = quocTichID;
	}
	public String getQuocTichMa() {
		return quocTichMa;
	}
	public void setQuocTichMa(String quocTichMa) {
		this.quocTichMa = quocTichMa;
	}
	public String getQuocTichTen() {
		return quocTichTen;
	}
	public void setQuocTichTen(String quocTichTen) {
		this.quocTichTen = quocTichTen;
	}
	public String getGhiChu() {
		return ghiChu;
	}
	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
}

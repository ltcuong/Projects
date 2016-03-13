package entity;

import java.io.Serializable;

public class DMTinh implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer tinhID;
	private String tinhMa;
	private String tinhTen;
	private String tenThanhPho;
	private String maBaoCao;
	private int locked;
	
	
	public String getMaBaoCao() {
		return maBaoCao;
	}
	public void setMaBaoCao(String maBaoCao) {
		this.maBaoCao = maBaoCao;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	public Integer getTinhID() {
		return tinhID;
	}
	public void setTinhID(Integer tinhID) {
		this.tinhID = tinhID;
	}
	public String getTinhMa() {
		return tinhMa;
	}
	public void setTinhMa(String tinhMa) {
		this.tinhMa = tinhMa;
	}
	public String getTinhTen() {
		return tinhTen;
	}
	public void setTinhTen(String tinhTen) {
		this.tinhTen = tinhTen;
	}
	public String getTenThanhPho() {
		return tenThanhPho;
	}
	public void setTenThanhPho(String tenThanhPho) {
		this.tenThanhPho = tenThanhPho;
	}
	
	
}

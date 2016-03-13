package entity;

import java.io.Serializable;

public class DMXa implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer xaID;
	private String xaMa;
	private String xaTen;
	private Integer huyenID;
	private DMHuyen huyen;
	private String maBaoCao;
	private Integer laBenhVien;;
	private int locked;
	
	
	public Integer getLaBenhVien() {
		return laBenhVien;
	}
	public void setLaBenhVien(Integer laBenhVien) {
		this.laBenhVien = laBenhVien;
	}
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
	public Integer getXaID() {
		return xaID;
	}
	public void setXaID(Integer xaID) {
		this.xaID = xaID;
	}
	public String getXaMa() {
		return xaMa;
	}
	public void setXaMa(String xaMa) {
		this.xaMa = xaMa;
	}
	public String getXaTen() {
		return xaTen;
	}
	public void setXaTen(String xaTen) {
		this.xaTen = xaTen;
	}
	public Integer getHuyenID() {
		return huyenID;
	}
	public void setHuyenID(Integer huyenID) {
		this.huyenID = huyenID;
	}
	public DMHuyen getHuyen() {
		return huyen;
	}
	public void setHuyen(DMHuyen huyen) {
		this.huyen = huyen;
	}
	
	
}

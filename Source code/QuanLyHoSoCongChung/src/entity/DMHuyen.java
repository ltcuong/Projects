package entity;

import java.io.Serializable;

public class DMHuyen implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer huyenID;
	private String huyenMa;
	private String huyenTen;
	private Integer tinhID;
	private int locked;
	private String maBaoCao;
	private Integer laBenhVien;
	
	private DMTinh tinh;
	
	
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
	public Integer getHuyenID() {
		return huyenID;
	}
	public void setHuyenID(Integer huyenID) {
		this.huyenID = huyenID;
	}
	public String getHuyenMa() {
		return huyenMa;
	}
	public void setHuyenMa(String huyenMa) {
		this.huyenMa = huyenMa;
	}
	public String getHuyenTen() {
		return huyenTen;
	}
	public void setHuyenTen(String huyenTen) {
		this.huyenTen = huyenTen;
	}
	public Integer getTinhID() {
		return tinhID;
	}
	public void setTinhID(Integer tinhID) {
		this.tinhID = tinhID;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	public DMTinh getTinh() {
		return tinh;
	}
	public void setTinh(DMTinh tinh) {
		this.tinh = tinh;
	}
	
	
}

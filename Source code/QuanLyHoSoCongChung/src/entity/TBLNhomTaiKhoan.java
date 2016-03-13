package entity;

import java.io.Serializable;
import java.util.Date;

public class TBLNhomTaiKhoan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer nhomID;
	private String nhomMa;
	private String nhomTen;
	private int locked;
	private Date ngayCapNhat;
	private Integer nhomChaID;
	
	private TBLNhomTaiKhoan nhomCha;
	
	
	public TBLNhomTaiKhoan getNhomCha() {
		return nhomCha;
	}
	public void setNhomCha(TBLNhomTaiKhoan nhomCha) {
		this.nhomCha = nhomCha;
	}
	public Integer getNhomChaID() {
		return nhomChaID;
	}
	public void setNhomChaID(Integer nhomChaID) {
		this.nhomChaID = nhomChaID;
	}
	public Integer getNhomID() {
		return nhomID;
	}
	public void setNhomID(Integer nhomID) {
		this.nhomID = nhomID;
	}
	public String getNhomMa() {
		return nhomMa;
	}
	public void setNhomMa(String nhomMa) {
		this.nhomMa = nhomMa;
	}
	public String getNhomTen() {
		return nhomTen;
	}
	public void setNhomTen(String nhomTen) {
		this.nhomTen = nhomTen;
	}
	public int getLocked() {
		return locked;
	}
	public void setLocked(int locked) {
		this.locked = locked;
	}
	public Date getNgayCapNhat() {
		return ngayCapNhat;
	}
	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}
	
}

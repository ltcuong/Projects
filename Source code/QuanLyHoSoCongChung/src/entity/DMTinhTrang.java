package entity;

import java.io.Serializable;

public class DMTinhTrang implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer tinhTrangID;
	private String tinhTrangTen;
	private int coTheChinhSua;
	private int coTheXoa;
	
	
	public Integer getTinhTrangID() {
		return tinhTrangID;
	}
	public void setTinhTrangID(Integer tinhTrangID) {
		this.tinhTrangID = tinhTrangID;
	}
	public String getTinhTrangTen() {
		return tinhTrangTen;
	}
	public void setTinhTrangTen(String tinhTrangTen) {
		this.tinhTrangTen = tinhTrangTen;
	}
	public int getCoTheChinhSua() {
		return coTheChinhSua;
	}
	public void setCoTheChinhSua(int coTheChinhSua) {
		this.coTheChinhSua = coTheChinhSua;
	}
	public int getCoTheXoa() {
		return coTheXoa;
	}
	public void setCoTheXoa(int coTheXoa) {
		this.coTheXoa = coTheXoa;
	}
	
}

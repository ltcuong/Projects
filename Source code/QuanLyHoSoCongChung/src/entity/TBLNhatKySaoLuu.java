package entity;

import java.io.Serializable;
import java.util.Date;

public class TBLNhatKySaoLuu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer saoLuuID;
	private String tenSaoLuu;
	private Date ngaySaoLuu;
	private String taiKhoanSaoLuu;
	private String duongDan;
	
	
	public Integer getSaoLuuID() {
		return saoLuuID;
	}
	public void setSaoLuuID(Integer saoLuuID) {
		this.saoLuuID = saoLuuID;
	}
	public String getTenSaoLuu() {
		return tenSaoLuu;
	}
	public void setTenSaoLuu(String tenSaoLuu) {
		this.tenSaoLuu = tenSaoLuu;
	}
	public Date getNgaySaoLuu() {
		return ngaySaoLuu;
	}
	public void setNgaySaoLuu(Date ngaySaoLuu) {
		this.ngaySaoLuu = ngaySaoLuu;
	}
	public String getTaiKhoanSaoLuu() {
		return taiKhoanSaoLuu;
	}
	public void setTaiKhoanSaoLuu(String taiKhoanSaoLuu) {
		this.taiKhoanSaoLuu = taiKhoanSaoLuu;
	}
	public String getDuongDan() {
		return duongDan;
	}
	public void setDuongDan(String duongDan) {
		this.duongDan = duongDan;
	}
}

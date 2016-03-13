package entity;

import java.io.Serializable;
import java.util.Date;

public class TBLLogHeThong implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer logID;
	private String tenDangNhap;
	private String actionName;
	private String actionContent;
	private Date actionTime;
	private String formLamViec;
	private String formLamViecTen;
	
	
	public String getFormLamViecTen() {
		return formLamViecTen;
	}
	public void setFormLamViecTen(String formLamViecTen) {
		this.formLamViecTen = formLamViecTen;
	}
	public Integer getLogID() {
		return logID;
	}
	public void setLogID(Integer logID) {
		this.logID = logID;
	}
	public String getTenDangNhap() {
		return tenDangNhap;
	}
	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}
	
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	public String getActionContent() {
		return actionContent;
	}
	public void setActionContent(String actionContent) {
		this.actionContent = actionContent;
	}
	public Date getActionTime() {
		return actionTime;
	}
	public void setActionTime(Date actionTime) {
		this.actionTime = actionTime;
	}
	public String getFormLamViec() {
		return formLamViec;
	}
	public void setFormLamViec(String formLamViec) {
		this.formLamViec = formLamViec;
	}
	
	
}

package entity;

import java.io.Serializable;

public class TEMLoaiHopDongChiTietTemplateTaiSan implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer loaiHopDongChiTietID;
	private Integer templateTaiSanID;
	
	private DMLoaiHopDongChiTiet loaiHopDongChiTiet;
	private TEMTemplateTaiSan templateTaiSan;
	
	
	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}
	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}
	public Integer getTemplateTaiSanID() {
		return templateTaiSanID;
	}
	public void setTemplateTaiSanID(Integer templateTaiSanID) {
		this.templateTaiSanID = templateTaiSanID;
	}
	public DMLoaiHopDongChiTiet getLoaiHopDongChiTiet() {
		return loaiHopDongChiTiet;
	}
	public void setLoaiHopDongChiTiet(DMLoaiHopDongChiTiet loaiHopDongChiTiet) {
		this.loaiHopDongChiTiet = loaiHopDongChiTiet;
	}
	public TEMTemplateTaiSan getTemplateTaiSan() {
		return templateTaiSan;
	}
	public void setTemplateTaiSan(TEMTemplateTaiSan templateTaiSan) {
		this.templateTaiSan = templateTaiSan;
	}
}

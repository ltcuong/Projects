package entity;

import java.io.Serializable;

public class DMLoaiTaiSanLoaiHopDong implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loaiTaiSanID;
	private Integer loaiHopDongChiTietID;
	
	private DMLoaiTaiSan loaiTaiSan;
	private DMLoaiHopDongChiTiet loaiHopDongChiTiet;
	
	
	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}
	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}
	
	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}
	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}
	public DMLoaiHopDongChiTiet getLoaiHopDongChiTiet() {
		return loaiHopDongChiTiet;
	}
	public void setLoaiHopDongChiTiet(DMLoaiHopDongChiTiet loaiHopDongChiTiet) {
		this.loaiHopDongChiTiet = loaiHopDongChiTiet;
	}
	public DMLoaiTaiSan getLoaiTaiSan() {
		return loaiTaiSan;
	}
	public void setLoaiTaiSan(DMLoaiTaiSan loaiTaiSan) {
		this.loaiTaiSan = loaiTaiSan;
	}
}

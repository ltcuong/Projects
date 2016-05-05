package entity;

import java.io.Serializable;

public class TEMLoaiHopDongChiTietTemplateDuongSu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private Integer loaiHopDongChiTietID;
	private Integer templateDuongSuID;
	
	private DMLoaiHopDongChiTiet loaiHopDongChiTiet;
	private TEMTemplateDuongSu templateDuongSu;
	
	
	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}
	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}
	public Integer getTemplateDuongSuID() {
		return templateDuongSuID;
	}
	public void setTemplateDuongSuID(Integer templateDuongSuID) {
		this.templateDuongSuID = templateDuongSuID;
	}
	public DMLoaiHopDongChiTiet getLoaiHopDongChiTiet() {
		return loaiHopDongChiTiet;
	}
	public void setLoaiHopDongChiTiet(DMLoaiHopDongChiTiet loaiHopDongChiTiet) {
		this.loaiHopDongChiTiet = loaiHopDongChiTiet;
	}
	public TEMTemplateDuongSu getTemplateDuongSu() {
		return templateDuongSu;
	}
	public void setTemplateDuongSu(TEMTemplateDuongSu templateDuongSu) {
		this.templateDuongSu = templateDuongSu;
	}
}

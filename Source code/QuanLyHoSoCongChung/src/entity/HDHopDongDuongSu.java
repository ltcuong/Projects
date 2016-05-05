package entity;

import java.io.Serializable;

public class HDHopDongDuongSu implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer hopDongDuongSuID;
	private Integer hopDongID;
	private Integer duongSuID;
	private Integer loaiDuongSuID;
	private int laDongSoHuu;
	private int laNguoiUyQuyen;
	private int laDuongSuChinh;
	  
	private HDHopDong hopDong;
	private DSDuongSu duongSu;
	
	
	public Integer getHopDongDuongSuID() {
		return hopDongDuongSuID;
	}
	public void setHopDongDuongSuID(Integer hopDongDuongSuID) {
		this.hopDongDuongSuID = hopDongDuongSuID;
	}
	public Integer getHopDongID() {
		return hopDongID;
	}
	public void setHopDongID(Integer hopDongID) {
		this.hopDongID = hopDongID;
	}
	public Integer getDuongSuID() {
		return duongSuID;
	}
	public void setDuongSuID(Integer duongSuID) {
		this.duongSuID = duongSuID;
	}
	public Integer getLoaiDuongSuID() {
		return loaiDuongSuID;
	}
	public void setLoaiDuongSuID(Integer loaiDuongSuID) {
		this.loaiDuongSuID = loaiDuongSuID;
	}
	public int getLaDongSoHuu() {
		return laDongSoHuu;
	}
	public void setLaDongSoHuu(int laDongSoHuu) {
		this.laDongSoHuu = laDongSoHuu;
	}
	public int getLaNguoiUyQuyen() {
		return laNguoiUyQuyen;
	}
	public void setLaNguoiUyQuyen(int laNguoiUyQuyen) {
		this.laNguoiUyQuyen = laNguoiUyQuyen;
	}
	public int getLaDuongSuChinh() {
		return laDuongSuChinh;
	}
	public void setLaDuongSuChinh(int laDuongSuChinh) {
		this.laDuongSuChinh = laDuongSuChinh;
	}
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public DSDuongSu getDuongSu() {
		return duongSu;
	}
	public void setDuongSu(DSDuongSu duongSu) {
		this.duongSu = duongSu;
	}
}

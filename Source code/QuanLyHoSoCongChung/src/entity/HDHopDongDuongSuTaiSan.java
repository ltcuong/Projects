package entity;

import java.io.Serializable;

public class HDHopDongDuongSuTaiSan implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongDuongSuTaiSanID;
	private Integer hopDongID;
	private Integer duongSuID;
	private Integer taiSanID;
	private int conSoHuu;
	private int laNguoiDaiDien;
	
	private HDHopDong hopDong;
	private DSDuongSu duongSu;
	private TSTaiSan taiSan;
	
	public Integer getHopDongDuongSuTaiSanID() {
		return hopDongDuongSuTaiSanID;
	}
	public void setHopDongDuongSuTaiSanID(Integer hopDongDuongSuTaiSanID) {
		this.hopDongDuongSuTaiSanID = hopDongDuongSuTaiSanID;
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
	public Integer getTaiSanID() {
		return taiSanID;
	}
	public void setTaiSanID(Integer taiSanID) {
		this.taiSanID = taiSanID;
	}
	public int getConSoHuu() {
		return conSoHuu;
	}
	public void setConSoHuu(int conSoHuu) {
		this.conSoHuu = conSoHuu;
	}
	public int getLaNguoiDaiDien() {
		return laNguoiDaiDien;
	}
	public void setLaNguoiDaiDien(int laNguoiDaiDien) {
		this.laNguoiDaiDien = laNguoiDaiDien;
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
	public TSTaiSan getTaiSan() {
		return taiSan;
	}
	public void setTaiSan(TSTaiSan taiSan) {
		this.taiSan = taiSan;
	}
	
}

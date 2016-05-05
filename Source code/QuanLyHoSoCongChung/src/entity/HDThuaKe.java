package entity;

import java.io.Serializable;
import java.util.Date;

public class HDThuaKe implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer hopDongThuaKeID;
	private String noiDungTuChoiDiSan;
	private String giayToCanCuDeThuaKe;
	private Date ngayChet;
	private String soGiayChungTu;
	private Date ngayCapGiayChungTu;
	private String noiCapGiayChungTu;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongThuaKeID() {
		return hopDongThuaKeID;
	}
	public void setHopDongThuaKeID(Integer hopDongThuaKeID) {
		this.hopDongThuaKeID = hopDongThuaKeID;
	}
	public String getNoiDungTuChoiDiSan() {
		return noiDungTuChoiDiSan;
	}
	public void setNoiDungTuChoiDiSan(String noiDungTuChoiDiSan) {
		this.noiDungTuChoiDiSan = noiDungTuChoiDiSan;
	}
	public String getGiayToCanCuDeThuaKe() {
		return giayToCanCuDeThuaKe;
	}
	public void setGiayToCanCuDeThuaKe(String giayToCanCuDeThuaKe) {
		this.giayToCanCuDeThuaKe = giayToCanCuDeThuaKe;
	}
	public Date getNgayChet() {
		return ngayChet;
	}
	public void setNgayChet(Date ngayChet) {
		this.ngayChet = ngayChet;
	}
	public String getSoGiayChungTu() {
		return soGiayChungTu;
	}
	public void setSoGiayChungTu(String soGiayChungTu) {
		this.soGiayChungTu = soGiayChungTu;
	}
	public Date getNgayCapGiayChungTu() {
		return ngayCapGiayChungTu;
	}
	public void setNgayCapGiayChungTu(Date ngayCapGiayChungTu) {
		this.ngayCapGiayChungTu = ngayCapGiayChungTu;
	}
	public String getNoiCapGiayChungTu() {
		return noiCapGiayChungTu;
	}
	public void setNoiCapGiayChungTu(String noiCapGiayChungTu) {
		this.noiCapGiayChungTu = noiCapGiayChungTu;
	}

}

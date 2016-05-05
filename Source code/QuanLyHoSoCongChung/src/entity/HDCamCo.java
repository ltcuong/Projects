package entity;

import java.io.Serializable;
import java.util.Date;

public class HDCamCo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer hopDongCamCoID;
	private Double soTienDamBao;
	private Double giaTriTaiSanCamCo;
	private Date ngayThamDinhTaiSan;
	private String phuongThucXuLyTaiSan;
	private String cacThoaThuanKhac;
	private Date ngayCoHieuLuc;
	
	private HDHopDong hopDong;
	
	
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongCamCoID() {
		return hopDongCamCoID;
	}
	public void setHopDongCamCoID(Integer hopDongCamCoID) {
		this.hopDongCamCoID = hopDongCamCoID;
	}
	public Double getSoTienDamBao() {
		return soTienDamBao;
	}
	public void setSoTienDamBao(Double soTienDamBao) {
		this.soTienDamBao = soTienDamBao;
	}
	public Double getGiaTriTaiSanCamCo() {
		return giaTriTaiSanCamCo;
	}
	public void setGiaTriTaiSanCamCo(Double giaTriTaiSanCamCo) {
		this.giaTriTaiSanCamCo = giaTriTaiSanCamCo;
	}
	public Date getNgayThamDinhTaiSan() {
		return ngayThamDinhTaiSan;
	}
	public void setNgayThamDinhTaiSan(Date ngayThamDinhTaiSan) {
		this.ngayThamDinhTaiSan = ngayThamDinhTaiSan;
	}
	
	public String getPhuongThucXuLyTaiSan() {
		return phuongThucXuLyTaiSan;
	}
	public void setPhuongThucXuLyTaiSan(String phuongThucXuLyTaiSan) {
		this.phuongThucXuLyTaiSan = phuongThucXuLyTaiSan;
	}
	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}
	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}
	public Date getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}
	public void setNgayCoHieuLuc(Date ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}
	
}

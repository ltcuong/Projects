package entity;

import java.io.Serializable;
import java.util.Date;

public class HDTangCho implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer hopDongTangChoID;
	private Date ngayGiaoTaiSan;
	private Double giaTriQuyenSDDatVaTSGanLienVoiDat;
	private String giayToVeQuyenSoHuuTaiSan;
	private String cacThoaThuanKhac;
	private Date ngayCoHieuLuc;
	private String trangThietBiChuYeu;
	private String giayToPhapLy;
	private String cacCamKetKhac;
	private String dieuKienTangCho;
	
	private HDHopDong hopDong;
	
	
	
	public String getGiayToVeQuyenSoHuuTaiSan() {
		return giayToVeQuyenSoHuuTaiSan;
	}
	public void setGiayToVeQuyenSoHuuTaiSan(String giayToVeQuyenSoHuuTaiSan) {
		this.giayToVeQuyenSoHuuTaiSan = giayToVeQuyenSoHuuTaiSan;
	}
	public HDHopDong getHopDong() {
		return hopDong;
	}
	public void setHopDong(HDHopDong hopDong) {
		this.hopDong = hopDong;
	}
	public Integer getHopDongTangChoID() {
		return hopDongTangChoID;
	}
	public void setHopDongTangChoID(Integer hopDongTangChoID) {
		this.hopDongTangChoID = hopDongTangChoID;
	}
	public Date getNgayGiaoTaiSan() {
		return ngayGiaoTaiSan;
	}
	public void setNgayGiaoTaiSan(Date ngayGiaoTaiSan) {
		this.ngayGiaoTaiSan = ngayGiaoTaiSan;
	}
	public Double getGiaTriQuyenSDDatVaTSGanLienVoiDat() {
		return giaTriQuyenSDDatVaTSGanLienVoiDat;
	}
	public void setGiaTriQuyenSDDatVaTSGanLienVoiDat(
			Double giaTriQuyenSDDatVaTSGanLienVoiDat) {
		this.giaTriQuyenSDDatVaTSGanLienVoiDat = giaTriQuyenSDDatVaTSGanLienVoiDat;
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
	public String getTrangThietBiChuYeu() {
		return trangThietBiChuYeu;
	}
	public void setTrangThietBiChuYeu(String trangThietBiChuYeu) {
		this.trangThietBiChuYeu = trangThietBiChuYeu;
	}
	public String getGiayToPhapLy() {
		return giayToPhapLy;
	}
	public void setGiayToPhapLy(String giayToPhapLy) {
		this.giayToPhapLy = giayToPhapLy;
	}
	public String getCacCamKetKhac() {
		return cacCamKetKhac;
	}
	public void setCacCamKetKhac(String cacCamKetKhac) {
		this.cacCamKetKhac = cacCamKetKhac;
	}
	public String getDieuKienTangCho() {
		return dieuKienTangCho;
	}
	public void setDieuKienTangCho(String dieuKienTangCho) {
		this.dieuKienTangCho = dieuKienTangCho;
	}
	
}

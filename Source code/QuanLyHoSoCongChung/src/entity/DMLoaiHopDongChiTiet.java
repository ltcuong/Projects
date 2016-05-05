package entity;

import java.io.Serializable;

public class DMLoaiHopDongChiTiet implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer loaiHopDongChiTietID;
	private String loaiHopDongChiTietTen;
	private Integer loaiHopDongID;
	private int coTaiSan;
	private int coBenThu3;
	private int coDoiChuSoHuu;
	private int coTaiSanTuongLai;
	private int coTaiSanGanLien;
	private String noiDungTemplate;
	
	
	private DMLoaiHopDong loaiHopDong;


	public String getNoiDungTemplate() {
		return noiDungTemplate;
	}

	public void setNoiDungTemplate(String noiDungTemplate) {
		this.noiDungTemplate = noiDungTemplate;
	}

	public int getCoTaiSanGanLien() {
		return coTaiSanGanLien;
	}

	public void setCoTaiSanGanLien(int coTaiSanGanLien) {
		this.coTaiSanGanLien = coTaiSanGanLien;
	}

	public int getCoTaiSanTuongLai() {
		return coTaiSanTuongLai;
	}

	public void setCoTaiSanTuongLai(int coTaiSanTuongLai) {
		this.coTaiSanTuongLai = coTaiSanTuongLai;
	}

	public int getCoTaiSan() {
		return coTaiSan;
	}

	public void setCoTaiSan(int coTaiSan) {
		this.coTaiSan = coTaiSan;
	}

	public int getCoBenThu3() {
		return coBenThu3;
	}

	public void setCoBenThu3(int coBenThu3) {
		this.coBenThu3 = coBenThu3;
	}

	public int getCoDoiChuSoHuu() {
		return coDoiChuSoHuu;
	}

	public void setCoDoiChuSoHuu(int coDoiChuSoHuu) {
		this.coDoiChuSoHuu = coDoiChuSoHuu;
	}

	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}

	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}

	public String getLoaiHopDongChiTietTen() {
		return loaiHopDongChiTietTen;
	}

	public void setLoaiHopDongChiTietTen(String loaiHopDongChiTietTen) {
		this.loaiHopDongChiTietTen = loaiHopDongChiTietTen;
	}

	public Integer getLoaiHopDongID() {
		return loaiHopDongID;
	}

	public void setLoaiHopDongID(Integer loaiHopDongID) {
		this.loaiHopDongID = loaiHopDongID;
	}

	public DMLoaiHopDong getLoaiHopDong() {
		return loaiHopDong;
	}

	public void setLoaiHopDong(DMLoaiHopDong loaiHopDong) {
		this.loaiHopDong = loaiHopDong;
	}
}

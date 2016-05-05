package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDHopDong;
import entity.HDHopDongTam;
import entity.HDHuy;

public class GetFormHopDongHuyBo extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	// Thong tin chung
	private String result;
	private Integer loaiHopDongID;
	private Integer loaiHopDongChiTietID;
	private Integer benDangKyID;
	private Integer benChiuPhiID;
	private Double phiGiaoDich;
	private int laHopDongSoanSan;
	
	private Integer huyHopDongID;
	private String soHopDongHuy;
	private String lyDoHuy;
	private String phuongThucGiaoLaiTaiSan;
	private String ngayGiaoLaiTaiSan;
	private String phuongThucGiaoLaiTien;
	private String ngayGiaoLaiTien;
	private String boiThuongThietHai;
	private String thoaThuanKhac;
	private String camKetKhac;
	
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongHuyBo() {
		memberShip = super.getMemberShip();
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		HDHopDongTam hopDongTam = (HDHopDongTam) session
				.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			// Thong tin chung hop dong
			HDHopDong hopDong = hopDongTam.getHopDong();
			if (hopDong == null) {
				hopDong = new HDHopDong();
			}
			hopDong.setLoaiHopDongID(loaiHopDongID);
			hopDong.setLoaiHopDongChiTietID(loaiHopDongChiTietID);
			hopDong.setBenDangKyID(benDangKyID);
			hopDong.setBenChiuPhiID(benChiuPhiID);
			hopDong.setNguoiTaoHopDong(memberShip.getTenDangNhap());
			hopDong.setPhiGiaoDich(phiGiaoDich);
			hopDong.setTinhTrangID(HDHopDong.TINHTRANG_TIEPNHAN);
			hopDong.setLaHopDongSoanSan(laHopDongSoanSan);
			//Begin thong tin rieng
			
			HDHuy hopDongHuy = hopDong.getHopDongHuy();
			if (hopDongHuy == null) {
				hopDongHuy = new HDHuy();
			}
			hopDongHuy.setHuyHopDongID(huyHopDongID);
			hopDongHuy.setSoHopDongHuy(soHopDongHuy);
			hopDongHuy.setLyDoHuy(lyDoHuy);
			hopDongHuy.setPhuongThucGiaoLaiTaiSan(phuongThucGiaoLaiTaiSan);
			Date d1 = null, d2 = null;
			if (ngayGiaoLaiTaiSan != null && !ngayGiaoLaiTaiSan.isEmpty()) {
				try {
					d1 = df.parse(ngayGiaoLaiTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongHuy.setNgayGiaoLaiTaiSan(d1);
			hopDongHuy.setPhuongThucGiaoLaiTien(phuongThucGiaoLaiTien);
			if (ngayGiaoLaiTien != null && !ngayGiaoLaiTien.isEmpty()) {
				try {
					d2 = df.parse(ngayGiaoLaiTien);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongHuy.setNgayGiaoLaiTien(d2);
			hopDongHuy.setBoiThuongThietHai(boiThuongThietHai);
			hopDongHuy.setThoaThuanKhac(thoaThuanKhac);
			hopDongHuy.setCamKetKhac(camKetKhac);
			
			
			// End thong tin rieng
			hopDong.setHopDongHuy(hopDongHuy);
			hopDongHuy.setHopDong(hopDong);
			hopDongTam.setHopDong(hopDong);
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		}
		return SUCCESS;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getLoaiHopDongID() {
		return loaiHopDongID;
	}

	public void setLoaiHopDongID(Integer loaiHopDongID) {
		this.loaiHopDongID = loaiHopDongID;
	}

	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}

	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}

	public Integer getBenDangKyID() {
		return benDangKyID;
	}

	public void setBenDangKyID(Integer benDangKyID) {
		this.benDangKyID = benDangKyID;
	}

	public Integer getBenChiuPhiID() {
		return benChiuPhiID;
	}

	public void setBenChiuPhiID(Integer benChiuPhiID) {
		this.benChiuPhiID = benChiuPhiID;
	}

	public Double getPhiGiaoDich() {
		return phiGiaoDich;
	}

	public void setPhiGiaoDich(Double phiGiaoDich) {
		this.phiGiaoDich = phiGiaoDich;
	}

	public int getLaHopDongSoanSan() {
		return laHopDongSoanSan;
	}

	public void setLaHopDongSoanSan(int laHopDongSoanSan) {
		this.laHopDongSoanSan = laHopDongSoanSan;
	}

	public Integer getHuyHopDongID() {
		return huyHopDongID;
	}

	public void setHuyHopDongID(Integer huyHopDongID) {
		this.huyHopDongID = huyHopDongID;
	}

	public String getSoHopDongHuy() {
		return soHopDongHuy;
	}

	public void setSoHopDongHuy(String soHopDongHuy) {
		this.soHopDongHuy = soHopDongHuy;
	}

	public String getLyDoHuy() {
		return lyDoHuy;
	}

	public void setLyDoHuy(String lyDoHuy) {
		this.lyDoHuy = lyDoHuy;
	}

	public String getPhuongThucGiaoLaiTaiSan() {
		return phuongThucGiaoLaiTaiSan;
	}

	public void setPhuongThucGiaoLaiTaiSan(String phuongThucGiaoLaiTaiSan) {
		this.phuongThucGiaoLaiTaiSan = phuongThucGiaoLaiTaiSan;
	}

	public String getNgayGiaoLaiTaiSan() {
		return ngayGiaoLaiTaiSan;
	}

	public void setNgayGiaoLaiTaiSan(String ngayGiaoLaiTaiSan) {
		this.ngayGiaoLaiTaiSan = ngayGiaoLaiTaiSan;
	}

	public String getPhuongThucGiaoLaiTien() {
		return phuongThucGiaoLaiTien;
	}

	public void setPhuongThucGiaoLaiTien(String phuongThucGiaoLaiTien) {
		this.phuongThucGiaoLaiTien = phuongThucGiaoLaiTien;
	}

	public String getNgayGiaoLaiTien() {
		return ngayGiaoLaiTien;
	}

	public void setNgayGiaoLaiTien(String ngayGiaoLaiTien) {
		this.ngayGiaoLaiTien = ngayGiaoLaiTien;
	}

	public String getBoiThuongThietHai() {
		return boiThuongThietHai;
	}

	public void setBoiThuongThietHai(String boiThuongThietHai) {
		this.boiThuongThietHai = boiThuongThietHai;
	}

	public String getThoaThuanKhac() {
		return thoaThuanKhac;
	}

	public void setThoaThuanKhac(String thoaThuanKhac) {
		this.thoaThuanKhac = thoaThuanKhac;
	}

	public String getCamKetKhac() {
		return camKetKhac;
	}

	public void setCamKetKhac(String camKetKhac) {
		this.camKetKhac = camKetKhac;
	}
	
}

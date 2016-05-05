package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDChuyenNhuong;
import entity.HDHopDong;
import entity.HDHopDongTam;

public class GetFormHopDongChuyenNhuong extends BaseAction {

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

	private Integer hopDongChuyenNhuongID;
	private Double giaChuyenNhuong;
	private String phuongThucThanhToan;
	private String ngayGiaoTaiSan;
	private String cacThoaThuanKhac;
	private String ngayCoHieuLuc;

	public String execute() {
		memberShip = super.getMemberShip();

		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongChuyenNhuong() {
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
		
			HDChuyenNhuong hopDongChuyenNhuong = hopDong.getHopDongChuyenNhuong();
			if (hopDongChuyenNhuong == null) {
				hopDongChuyenNhuong = new HDChuyenNhuong();
			}
			hopDongChuyenNhuong.setGiaChuyenNhuong(giaChuyenNhuong);
			hopDongChuyenNhuong.setPhuongThucThanhToan(phuongThucThanhToan);
			Date d1 = null;
			if (ngayGiaoTaiSan != null && !ngayGiaoTaiSan.isEmpty()) {
				try {
					d1 = df.parse(ngayGiaoTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenNhuong.setNgayGiaoTaiSan(d1);
			hopDongChuyenNhuong.setCacThoaThuanKhac(cacThoaThuanKhac);
			Date d2 = null;
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d2 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenNhuong.setNgayCoHieuLuc(d2);
			hopDong.setHopDongChuyenNhuong(hopDongChuyenNhuong);
			hopDongChuyenNhuong.setHopDong(hopDong);

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

	public Integer getHopDongChuyenNhuongID() {
		return hopDongChuyenNhuongID;
	}

	public void setHopDongChuyenNhuongID(Integer hopDongChuyenNhuongID) {
		this.hopDongChuyenNhuongID = hopDongChuyenNhuongID;
	}

	public Double getGiaChuyenNhuong() {
		return giaChuyenNhuong;
	}

	public void setGiaChuyenNhuong(Double giaChuyenNhuong) {
		this.giaChuyenNhuong = giaChuyenNhuong;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public String getNgayGiaoTaiSan() {
		return ngayGiaoTaiSan;
	}

	public void setNgayGiaoTaiSan(String ngayGiaoTaiSan) {
		this.ngayGiaoTaiSan = ngayGiaoTaiSan;
	}

	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}

	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}

	public String getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}

	public void setNgayCoHieuLuc(String ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}

}

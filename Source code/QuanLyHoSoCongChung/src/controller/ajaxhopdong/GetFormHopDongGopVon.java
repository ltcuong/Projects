package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDGopVon;
import entity.HDHopDong;
import entity.HDHopDongTam;

public class GetFormHopDongGopVon extends BaseAction {

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
	
	private Integer hopDongGopVonID;
	private Double giaGopVon;
	private String ngayThamDinhTaiSan;
	private String mucDichGopVon;
	private String thoiHanGopVon;
	private String thoiHanKetThucGopVon;
	private String gopVonTuNgay;
	private String loiNhuanGopVon;
	private String phuongThucThanhToan;
	private String cacThoaThuanKhac;
	private String ngayCoHieuLuc;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongGopVon() {
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
			
			HDGopVon hopDongGopVon = hopDong.getHopDongGopVon();
			if (hopDongGopVon == null) {
				hopDongGopVon = new HDGopVon();
			}
			hopDongGopVon.setGiaGopVon(giaGopVon);
			Date d1 = null, d2 = null, d3 = null, d4 = null;
			if (ngayThamDinhTaiSan != null && !ngayThamDinhTaiSan.isEmpty()) {
				try {
					d1 = df.parse(ngayThamDinhTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongGopVon.setNgayThamDinhTaiSan(d1);
			hopDongGopVon.setMucDichGopVon(mucDichGopVon);
			hopDongGopVon.setThoiHanGopVon(thoiHanGopVon);
			if (thoiHanKetThucGopVon != null && !thoiHanKetThucGopVon.isEmpty()) {
				try {
					d2 = df.parse(thoiHanKetThucGopVon);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongGopVon.setThoiHanKetThucGopVon(d2);
			if (gopVonTuNgay != null && !gopVonTuNgay.isEmpty()) {
				try {
					d3 = df.parse(gopVonTuNgay);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongGopVon.setGopVonTuNgay(d3);
			hopDongGopVon.setLoiNhuanGopVon(loiNhuanGopVon);
			hopDongGopVon.setPhuongThucThanhToan(phuongThucThanhToan);
			hopDongGopVon.setCacThoaThuanKhac(cacThoaThuanKhac);
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d4 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongGopVon.setNgayCoHieuLuc(d4);
			
			// End thong tin rieng
			hopDong.setHopDongGopVon(hopDongGopVon);
			hopDongGopVon.setHopDong(hopDong);
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

	public Integer getHopDongGopVonID() {
		return hopDongGopVonID;
	}

	public void setHopDongGopVonID(Integer hopDongGopVonID) {
		this.hopDongGopVonID = hopDongGopVonID;
	}

	public Double getGiaGopVon() {
		return giaGopVon;
	}

	public void setGiaGopVon(Double giaGopVon) {
		this.giaGopVon = giaGopVon;
	}

	public String getNgayThamDinhTaiSan() {
		return ngayThamDinhTaiSan;
	}

	public void setNgayThamDinhTaiSan(String ngayThamDinhTaiSan) {
		this.ngayThamDinhTaiSan = ngayThamDinhTaiSan;
	}

	public String getMucDichGopVon() {
		return mucDichGopVon;
	}

	public void setMucDichGopVon(String mucDichGopVon) {
		this.mucDichGopVon = mucDichGopVon;
	}

	public String getThoiHanGopVon() {
		return thoiHanGopVon;
	}

	public void setThoiHanGopVon(String thoiHanGopVon) {
		this.thoiHanGopVon = thoiHanGopVon;
	}

	public String getThoiHanKetThucGopVon() {
		return thoiHanKetThucGopVon;
	}

	public void setThoiHanKetThucGopVon(String thoiHanKetThucGopVon) {
		this.thoiHanKetThucGopVon = thoiHanKetThucGopVon;
	}

	public String getGopVonTuNgay() {
		return gopVonTuNgay;
	}

	public void setGopVonTuNgay(String gopVonTuNgay) {
		this.gopVonTuNgay = gopVonTuNgay;
	}

	public String getLoiNhuanGopVon() {
		return loiNhuanGopVon;
	}

	public void setLoiNhuanGopVon(String loiNhuanGopVon) {
		this.loiNhuanGopVon = loiNhuanGopVon;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
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

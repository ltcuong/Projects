package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDHopDong;
import entity.HDHopDongTam;
import entity.HDUyQuyen;

public class GetFormHopDongUyQuyen extends BaseAction {

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
	
	private Integer hopDongUyQuyenID;
	private String phamViUyQuyen;
	private String thoiHanUyQuyen;
	private String thoiHanKetThucUyQuyen;
	private String uyQuyenTuNgay;
	private Double thuLaoPhaiTra;
	private String ngayCoHieuLuc;
	private String cacThoaThuanKhac;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongUyQuyen() {
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
			
			HDUyQuyen hopDongUyQuyen = hopDong.getHopDongUyQuyen();
			if (hopDongUyQuyen == null) {
				hopDongUyQuyen = new HDUyQuyen();
			}
			hopDongUyQuyen.setPhamViUyQuyen(phamViUyQuyen);
			hopDongUyQuyen.setThoiHanUyQuyen(thoiHanUyQuyen);
			Date d1 = null, d2 = null, d3 = null;
			if (thoiHanKetThucUyQuyen != null && !thoiHanKetThucUyQuyen.isEmpty()) {
				try {
					d1 = df.parse(thoiHanKetThucUyQuyen);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongUyQuyen.setThoiHanKetThucUyQuyen(d1);
			if (uyQuyenTuNgay != null && !uyQuyenTuNgay.isEmpty()) {
				try {
					d2 = df.parse(uyQuyenTuNgay);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongUyQuyen.setUyQuyenTuNgay(d2);
			hopDongUyQuyen.setThuLaoPhaiTra(thuLaoPhaiTra);
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d3 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongUyQuyen.setNgayCoHieuLuc(d3);
			hopDongUyQuyen.setCacThoaThuanKhac(cacThoaThuanKhac);
			
			// End thong tin rieng
			hopDong.setHopDongUyQuyen(hopDongUyQuyen);
			hopDongUyQuyen.setHopDong(hopDong);
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

	public Integer getHopDongUyQuyenID() {
		return hopDongUyQuyenID;
	}

	public void setHopDongUyQuyenID(Integer hopDongUyQuyenID) {
		this.hopDongUyQuyenID = hopDongUyQuyenID;
	}

	public String getPhamViUyQuyen() {
		return phamViUyQuyen;
	}

	public void setPhamViUyQuyen(String phamViUyQuyen) {
		this.phamViUyQuyen = phamViUyQuyen;
	}

	public String getThoiHanUyQuyen() {
		return thoiHanUyQuyen;
	}

	public void setThoiHanUyQuyen(String thoiHanUyQuyen) {
		this.thoiHanUyQuyen = thoiHanUyQuyen;
	}

	public String getThoiHanKetThucUyQuyen() {
		return thoiHanKetThucUyQuyen;
	}

	public void setThoiHanKetThucUyQuyen(String thoiHanKetThucUyQuyen) {
		this.thoiHanKetThucUyQuyen = thoiHanKetThucUyQuyen;
	}

	public String getUyQuyenTuNgay() {
		return uyQuyenTuNgay;
	}

	public void setUyQuyenTuNgay(String uyQuyenTuNgay) {
		this.uyQuyenTuNgay = uyQuyenTuNgay;
	}

	public Double getThuLaoPhaiTra() {
		return thuLaoPhaiTra;
	}

	public void setThuLaoPhaiTra(Double thuLaoPhaiTra) {
		this.thuLaoPhaiTra = thuLaoPhaiTra;
	}

	public String getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}

	public void setNgayCoHieuLuc(String ngayCoHieuLuc) {
		this.ngayCoHieuLuc = ngayCoHieuLuc;
	}

	public String getCacThoaThuanKhac() {
		return cacThoaThuanKhac;
	}

	public void setCacThoaThuanKhac(String cacThoaThuanKhac) {
		this.cacThoaThuanKhac = cacThoaThuanKhac;
	}
}

package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDChuyenDoi;
import entity.HDHopDong;
import entity.HDHopDongTam;

public class GetFormHopDongChuyenDoi extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	// Thong tin chung
	private String result;
	private Integer loaiHopDongID;
	private Integer loaiHopDongChiTietID;
	private Double phiGiaoDich;
	private int laHopDongSoanSan;
	
	private Integer hopDongChuyenDoiID;
	private String ngayGiaoTaiSanChoBenA;
	private String ngayGiaoTaiSanChoBenB;
	private Double soTienChenhLech;
	private Integer benTraChenhLech;
	private String phuongThucThanhToan;
	private Integer benThanhToan;
	private String thoiHanThanhToan;
	private String cacCamKetKhac;
	private Double phiBenAPhaiTra;
	private Double phiBenBPhaiTra;
	private String ngayGiaoTaiSan;
	private String ngayCoHieuLuc;
	private String cacThoaThuanKhac;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinHopDongChuyenDoi() {
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
			hopDong.setNguoiTaoHopDong(memberShip.getTenDangNhap());
			hopDong.setPhiGiaoDich(phiGiaoDich);
			hopDong.setTinhTrangID(HDHopDong.TINHTRANG_TIEPNHAN);
			hopDong.setLaHopDongSoanSan(laHopDongSoanSan);
			//Begin thong tin rieng
			
			HDChuyenDoi hopDongChuyenDoi = hopDong.getHopDongChuyenDoi();
			if (hopDongChuyenDoi == null) {
				hopDongChuyenDoi = new HDChuyenDoi();
			}
			Date d1 = null;
			if (ngayGiaoTaiSanChoBenA != null && !ngayGiaoTaiSanChoBenA.isEmpty()) {
				try {
					d1 = df.parse(ngayGiaoTaiSanChoBenA);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenDoi.setNgayGiaoTaiSanChoBenA(d1);
			Date d2 = null;
			if (ngayGiaoTaiSanChoBenB != null && !ngayGiaoTaiSanChoBenB.isEmpty()) {
				try {
					d2 = df.parse(ngayGiaoTaiSanChoBenB);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenDoi.setNgayGiaoTaiSanChoBenB(d2);
			hopDongChuyenDoi.setSoTienChenhLech(soTienChenhLech);
			hopDongChuyenDoi.setBenTraChenhLech(benTraChenhLech);
			hopDongChuyenDoi.setPhuongThucThanhToan(phuongThucThanhToan);
			hopDongChuyenDoi.setBenThanhToan(benThanhToan);
			Date d3 = null;
			if (thoiHanThanhToan != null && !thoiHanThanhToan.isEmpty()) {
				try {
					d3 = df.parse(thoiHanThanhToan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenDoi.setThoiHanThanhToan(d3);
			hopDongChuyenDoi.setCacCamKetKhac(cacCamKetKhac);
			hopDongChuyenDoi.setPhiBenAPhaiTra(phiBenAPhaiTra);
			hopDongChuyenDoi.setPhiBenBPhaiTra(phiBenBPhaiTra);
			Date d4 = null;
			if (ngayGiaoTaiSan != null && !ngayGiaoTaiSan.isEmpty()) {
				try {
					d4 = df.parse(ngayGiaoTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenDoi.setNgayGiaoTaiSan(d4);
			Date d5 = null;
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d5 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongChuyenDoi.setNgayCoHieuLuc(d5);
			hopDongChuyenDoi.setCacThoaThuanKhac(cacThoaThuanKhac);
			
			// End thong tin rieng
			hopDong.setHopDongChuyenDoi(hopDongChuyenDoi);
			hopDongChuyenDoi.setHopDong(hopDong);
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

	public Integer getHopDongChuyenDoiID() {
		return hopDongChuyenDoiID;
	}

	public void setHopDongChuyenDoiID(Integer hopDongChuyenDoiID) {
		this.hopDongChuyenDoiID = hopDongChuyenDoiID;
	}

	public String getNgayGiaoTaiSanChoBenA() {
		return ngayGiaoTaiSanChoBenA;
	}

	public void setNgayGiaoTaiSanChoBenA(String ngayGiaoTaiSanChoBenA) {
		this.ngayGiaoTaiSanChoBenA = ngayGiaoTaiSanChoBenA;
	}

	public String getNgayGiaoTaiSanChoBenB() {
		return ngayGiaoTaiSanChoBenB;
	}

	public void setNgayGiaoTaiSanChoBenB(String ngayGiaoTaiSanChoBenB) {
		this.ngayGiaoTaiSanChoBenB = ngayGiaoTaiSanChoBenB;
	}

	public Double getSoTienChenhLech() {
		return soTienChenhLech;
	}

	public void setSoTienChenhLech(Double soTienChenhLech) {
		this.soTienChenhLech = soTienChenhLech;
	}

	public Integer getBenTraChenhLech() {
		return benTraChenhLech;
	}

	public void setBenTraChenhLech(Integer benTraChenhLech) {
		this.benTraChenhLech = benTraChenhLech;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public Integer getBenThanhToan() {
		return benThanhToan;
	}

	public void setBenThanhToan(Integer benThanhToan) {
		this.benThanhToan = benThanhToan;
	}

	public String getThoiHanThanhToan() {
		return thoiHanThanhToan;
	}

	public void setThoiHanThanhToan(String thoiHanThanhToan) {
		this.thoiHanThanhToan = thoiHanThanhToan;
	}

	public String getCacCamKetKhac() {
		return cacCamKetKhac;
	}

	public void setCacCamKetKhac(String cacCamKetKhac) {
		this.cacCamKetKhac = cacCamKetKhac;
	}

	public Double getPhiBenAPhaiTra() {
		return phiBenAPhaiTra;
	}

	public void setPhiBenAPhaiTra(Double phiBenAPhaiTra) {
		this.phiBenAPhaiTra = phiBenAPhaiTra;
	}

	public Double getPhiBenBPhaiTra() {
		return phiBenBPhaiTra;
	}

	public void setPhiBenBPhaiTra(Double phiBenBPhaiTra) {
		this.phiBenBPhaiTra = phiBenBPhaiTra;
	}

	public String getNgayGiaoTaiSan() {
		return ngayGiaoTaiSan;
	}

	public void setNgayGiaoTaiSan(String ngayGiaoTaiSan) {
		this.ngayGiaoTaiSan = ngayGiaoTaiSan;
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

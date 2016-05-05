package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDHopDong;
import entity.HDHopDongTam;
import entity.HDTangCho;

public class GetFormHopDongTangCho extends BaseAction {

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

	private Integer hopDongTangChoID;
	private String ngayGiaoTaiSan;
	private Double giaTriQuyenSDDatVaTSGanLienVoiDat;
	private String giayToVeQuyenSoHuuTaiSan;
	private String cacThoaThuanKhac;
	private String ngayCoHieuLuc;
	private String trangThietBiChuYeu;
	private String giayToPhapLy;
	private String cacCamKetKhac;
	private String dieuKienTangCho;

	public String execute() {
		memberShip = super.getMemberShip();

		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongTangCho() {
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
			
			HDTangCho hopDongTangCho = hopDong.getHopDongTangCho();
			if (hopDongTangCho == null) {
				hopDongTangCho = new HDTangCho();
			}
			Date d1 = null;
			if (ngayGiaoTaiSan != null && !ngayGiaoTaiSan.isEmpty()) {
				try {
					d1 = df.parse(ngayGiaoTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongTangCho.setNgayGiaoTaiSan(d1);
			hopDongTangCho.setGiaTriQuyenSDDatVaTSGanLienVoiDat(giaTriQuyenSDDatVaTSGanLienVoiDat);
			hopDongTangCho.setGiayToVeQuyenSoHuuTaiSan(giayToVeQuyenSoHuuTaiSan);
			hopDongTangCho.setCacThoaThuanKhac(cacThoaThuanKhac);
			Date d2 = null;
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d2 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongTangCho.setNgayCoHieuLuc(d2);
			hopDongTangCho.setTrangThietBiChuYeu(trangThietBiChuYeu);
			hopDongTangCho.setGiayToPhapLy(giayToPhapLy);
			hopDongTangCho.setCacCamKetKhac(cacCamKetKhac);
			hopDongTangCho.setDieuKienTangCho(dieuKienTangCho);
			
			// End thong tin rieng
			hopDong.setHopDongTangCho(hopDongTangCho);
			hopDongTangCho.setHopDong(hopDong);
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

	public String getGiayToVeQuyenSoHuuTaiSan() {
		return giayToVeQuyenSoHuuTaiSan;
	}

	public void setGiayToVeQuyenSoHuuTaiSan(String giayToVeQuyenSoHuuTaiSan) {
		this.giayToVeQuyenSoHuuTaiSan = giayToVeQuyenSoHuuTaiSan;
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

	public Integer getHopDongTangChoID() {
		return hopDongTangChoID;
	}

	public void setHopDongTangChoID(Integer hopDongTangChoID) {
		this.hopDongTangChoID = hopDongTangChoID;
	}

	public String getNgayGiaoTaiSan() {
		return ngayGiaoTaiSan;
	}

	public void setNgayGiaoTaiSan(String ngayGiaoTaiSan) {
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

	public String getNgayCoHieuLuc() {
		return ngayCoHieuLuc;
	}

	public void setNgayCoHieuLuc(String ngayCoHieuLuc) {
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

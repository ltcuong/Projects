package controller.ajaxhopdong;

import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDHopDong;
import entity.HDHopDongTam;
import entity.HDThuaKe;

public class GetFormHopDongThuaKe extends BaseAction {

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
	
	private Integer hopDongThuaKeID;
	private String noiDungTuChoiDiSan;
	private String giayToCanCuDeThuaKe;
	private Date ngayChet;
	private String soGiayChungTu;
	private Date ngayCapGiayChungTu;
	private String noiCapGiayChungTu;
	
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongThuaKe() {
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
			
			HDThuaKe hopDongThuaKe = hopDong.getHopDongThuaKe();
			if (hopDongThuaKe == null) {
				hopDongThuaKe = new HDThuaKe();
			}
			hopDongThuaKe.setNoiDungTuChoiDiSan(noiDungTuChoiDiSan);
			hopDongThuaKe.setGiayToCanCuDeThuaKe(giayToCanCuDeThuaKe);
			hopDongThuaKe.setNgayChet(ngayChet);
			hopDongThuaKe.setSoGiayChungTu(soGiayChungTu);
			hopDongThuaKe.setNgayCapGiayChungTu(ngayCapGiayChungTu);
			hopDongThuaKe.setNoiCapGiayChungTu(noiCapGiayChungTu);
			
			// End thong tin rieng
			hopDong.setHopDongThuaKe(hopDongThuaKe);
			hopDongThuaKe.setHopDong(hopDong);
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

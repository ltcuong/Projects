package controller.ajaxhopdong;

import java.text.SimpleDateFormat;

import util.Const;
import controller.BaseAction;
import entity.HDDiChuc;
import entity.HDHopDong;
import entity.HDHopDongTam;

public class GetFormHopDongDiChuc extends BaseAction {

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
	
	private Integer hopDongDiChucID;
	private String noiDungDiChuc;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongDiChuc() {
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
			
			HDDiChuc hopDongDiChuc = hopDong.getHopDongDiChuc();
			if (hopDongDiChuc == null) {
				hopDongDiChuc = new HDDiChuc();
			}
			hopDongDiChuc.setNoiDungDiChuc(noiDungDiChuc);
			
			// End thong tin rieng
			hopDong.setHopDongDiChuc(hopDongDiChuc);
			hopDongDiChuc.setHopDong(hopDong);
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

	public Integer getHopDongDiChucID() {
		return hopDongDiChucID;
	}

	public void setHopDongDiChucID(Integer hopDongDiChucID) {
		this.hopDongDiChucID = hopDongDiChucID;
	}

	public String getNoiDungDiChuc() {
		return noiDungDiChuc;
	}

	public void setNoiDungDiChuc(String noiDungDiChuc) {
		this.noiDungDiChuc = noiDungDiChuc;
	}
}

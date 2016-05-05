package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDHopDong;
import entity.HDHopDongTam;
import entity.HDTheChap;

public class GetFormHopDongTheChap extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String result;
	private int coTaiSanTuongLai;
	//Thong tin chung
	private Integer loaiHopDongID;
	private Integer loaiHopDongChiTietID;
	private Integer benDangKyID;
	private Integer benChiuPhiID;
	private Double phiGiaoDich;
	private int laHopDongSoanSan;
	//Thong tin chi tiet
	private Integer hopDongTheChapID;
	private Double soTienDamBao;
	private Double giaTheChap;
	private String ngayThamDinh;
	private String phuongThucXuLy;
	private String cacThoaThuanKhac;
	private String ngayCoHieuLuc;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongTheChap() {
		memberShip = super.getMemberShip();		
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			//Thong tin chung hop dong
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
			HDTheChap hopDongTheChap = hopDong.getHopDongTheChap();
			if (hopDongTheChap == null) {
				hopDongTheChap = new HDTheChap();
			}
			hopDongTheChap.setSoTienDamBao(soTienDamBao);
			hopDongTheChap.setGiaTheChap(giaTheChap);
			Date d1 = null;
			if (ngayThamDinh != null && !ngayThamDinh.isEmpty()) {
				try {
					d1 = df.parse(ngayThamDinh);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongTheChap.setNgayThamDinh(d1);
			hopDongTheChap.setPhuongThucXuLy(phuongThucXuLy);
			hopDongTheChap.setCacThoaThuanKhac(cacThoaThuanKhac);
			Date d2 = null;
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d2 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongTheChap.setNgayCoHieuLuc(d2);
			hopDong.setHopDongTheChap(hopDongTheChap);
			hopDongTheChap.setHopDong(hopDong);
			
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

	public Integer getBenDangKyID() {
		return benDangKyID;
	}

	public void setBenDangKyID(Integer benDangKyID) {
		this.benDangKyID = benDangKyID;
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

	public Integer getHopDongTheChapID() {
		return hopDongTheChapID;
	}

	public void setHopDongTheChapID(Integer hopDongTheChapID) {
		this.hopDongTheChapID = hopDongTheChapID;
	}

	public Double getSoTienDamBao() {
		return soTienDamBao;
	}

	public void setSoTienDamBao(Double soTienDamBao) {
		this.soTienDamBao = soTienDamBao;
	}

	public Double getGiaTheChap() {
		return giaTheChap;
	}

	public void setGiaTheChap(Double giaTheChap) {
		this.giaTheChap = giaTheChap;
	}

	public String getNgayThamDinh() {
		return ngayThamDinh;
	}

	public void setNgayThamDinh(String ngayThamDinh) {
		this.ngayThamDinh = ngayThamDinh;
	}


	public String getPhuongThucXuLy() {
		return phuongThucXuLy;
	}

	public void setPhuongThucXuLy(String phuongThucXuLy) {
		this.phuongThucXuLy = phuongThucXuLy;
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

	public int getCoTaiSanTuongLai() {
		return coTaiSanTuongLai;
	}


	public void setCoTaiSanTuongLai(int coTaiSanTuongLai) {
		this.coTaiSanTuongLai = coTaiSanTuongLai;
	}
}

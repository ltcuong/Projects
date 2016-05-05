package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import util.Const;
import controller.BaseAction;
import entity.HDCamCo;
import entity.HDHopDong;
import entity.HDHopDongTam;

public class GetFormHopDongCamCo extends BaseAction {

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
	
	private Integer hopDongCamCoID;
	private Double soTienDamBao;
	private Double giaTriTaiSanCamCo;
	private String ngayThamDinhTaiSan;
	private String phuongThucXuLyTaiSan;
	private String cacThoaThuanKhac;
	private String ngayCoHieuLuc;
	
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinHopDongCamCo() {
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
			
			HDCamCo hopDongCamCo = hopDong.getHopDongCamCo();
			if (hopDongCamCo == null) {
				hopDongCamCo = new HDCamCo();
			}
			hopDongCamCo.setSoTienDamBao(soTienDamBao);
			hopDongCamCo.setGiaTriTaiSanCamCo(giaTriTaiSanCamCo);
			Date d1 = null, d2 = null;
			if (ngayThamDinhTaiSan != null && !ngayThamDinhTaiSan.isEmpty()) {
				try {
					d1 = df.parse(ngayThamDinhTaiSan);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongCamCo.setNgayThamDinhTaiSan(d1);
			hopDongCamCo.setPhuongThucXuLyTaiSan(phuongThucXuLyTaiSan);
			hopDongCamCo.setCacThoaThuanKhac(cacThoaThuanKhac);
			if (ngayCoHieuLuc != null && !ngayCoHieuLuc.isEmpty()) {
				try {
					d2 = df.parse(ngayCoHieuLuc);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			hopDongCamCo.setNgayCoHieuLuc(d2);
			
			// End thong tin rieng
			hopDong.setHopDongCamCo(hopDongCamCo);
			hopDongCamCo.setHopDong(hopDong);
			hopDongTam.setHopDong(hopDong);
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		}
		return SUCCESS;
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

	public Integer getHopDongCamCoID() {
		return hopDongCamCoID;
	}

	public void setHopDongCamCoID(Integer hopDongCamCoID) {
		this.hopDongCamCoID = hopDongCamCoID;
	}

	public Double getSoTienDamBao() {
		return soTienDamBao;
	}

	public void setSoTienDamBao(Double soTienDamBao) {
		this.soTienDamBao = soTienDamBao;
	}

	public Double getGiaTriTaiSanCamCo() {
		return giaTriTaiSanCamCo;
	}

	public void setGiaTriTaiSanCamCo(Double giaTriTaiSanCamCo) {
		this.giaTriTaiSanCamCo = giaTriTaiSanCamCo;
	}

	public String getNgayThamDinhTaiSan() {
		return ngayThamDinhTaiSan;
	}

	public void setNgayThamDinhTaiSan(String ngayThamDinhTaiSan) {
		this.ngayThamDinhTaiSan = ngayThamDinhTaiSan;
	}

	
	public String getPhuongThucXuLyTaiSan() {
		return phuongThucXuLyTaiSan;
	}

	public void setPhuongThucXuLyTaiSan(String phuongThucXuLyTaiSan) {
		this.phuongThucXuLyTaiSan = phuongThucXuLyTaiSan;
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

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	
}

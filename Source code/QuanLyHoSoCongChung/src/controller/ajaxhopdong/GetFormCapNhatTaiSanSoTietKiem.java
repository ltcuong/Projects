package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMLoaiGiayTo;
import entity.HDHopDongTam;
import entity.TSSoTietKiem;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanSoTietKiem extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String result;
	private List<DMLoaiGiayTo> listLoaiGiayTo;
	private Integer taiSanID;
	private Integer loaiTaiSanID;
	private String tenPhieuTaiSan;
	private String tenKhoaTaiSan;
	private String ghiChu;
	private int benSoHuuTaiSan;
	//
	private Integer taiSanSoTietKiemID;
	private String ngayGui;
	private Double soDuTienGui;
	private String kyHan;
	private String laiXuat;
	private String loaiTien;
	private String nganHangCap;
	private String hoTenChuSo;
	private String diaChi;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private String ngayCapGiayTo;
	private String noiCapGiayTo;
	
	public String execute() {
		DanhMucService danhMucSV = new DanhMucService();
		listLoaiGiayTo = danhMucSV.getAllLoaiGiayTo(Const.UNLOCKED);
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinTaiSanSoTietKiem() {
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		DanhMucService danhMucSV = new DanhMucService();
		if (hopDongTam != null) {
			//Thong tin chung
			TSTaiSan taiSan = new TSTaiSan();
			List<TSTaiSan> listTaiSan = null;
			if (benSoHuuTaiSan == 1) {
				listTaiSan = hopDongTam.getListTaiSanBenA();
			} else {
				listTaiSan = hopDongTam.getListTaiSanBenB();
			}
			taiSan.setLoaiTaiSanID(loaiTaiSanID);
			taiSan.setLoaiTaiSan(danhMucSV.getAllLoaiTaiSanByID(loaiTaiSanID));
			taiSan.setTenPhieuTaiSan(tenPhieuTaiSan);
			taiSan.setTenKhoaTaiSan(tenKhoaTaiSan);
			taiSan.setGhiChu(ghiChu);
			//Thong tin chi tiet
			TSSoTietKiem soTietKiem = new TSSoTietKiem();
			Date d1 = null;
			if (ngayGui != null && !ngayGui.isEmpty()) {
				try {
					d1 = df.parse(ngayGui);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			soTietKiem.setNgayGui(d1);
			soTietKiem.setSoDuTienGui(soDuTienGui);
			soTietKiem.setKyHan(kyHan);
			soTietKiem.setLaiXuat(laiXuat);
			soTietKiem.setLoaiTien(loaiTien);
			soTietKiem.setNganHangCap(nganHangCap);
			soTietKiem.setHoTenChuSo(hoTenChuSo);
			soTietKiem.setDiaChi(diaChi);
			if (loaiGiayToID != null && loaiGiayToID.intValue() != 0) {
				soTietKiem.setLoaiGiayToID(loaiGiayToID);	
				soTietKiem.setLoaiGiayTo(danhMucSV.getLoaiGiayToByID(loaiGiayToID));
			} else {
				soTietKiem.setLoaiGiayToID(null);
			}
			soTietKiem.setSoGiayTo(soGiayTo);
			Date d2 = null;
			if (ngayCapGiayTo != null && !ngayCapGiayTo.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayTo);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			soTietKiem.setNgayCapGiayTo(d2);
			soTietKiem.setNoiCapGiayTo(noiCapGiayTo);
			taiSan.setTaiSanSoTietKiem(soTietKiem);
			soTietKiem.setTaiSan(taiSan);
			
			if (listTaiSan == null) {
				listTaiSan = new ArrayList<>();
			}
			listTaiSan.add(taiSan);	
			if (benSoHuuTaiSan == 1) {
				hopDongTam.setListTaiSanBenA(listTaiSan);
			} else {
				hopDongTam.setListTaiSanBenB(listTaiSan);
			}
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}
		return SUCCESS;
	}

	public int getBenSoHuuTaiSan() {
		return benSoHuuTaiSan;
	}

	public void setBenSoHuuTaiSan(int benSoHuuTaiSan) {
		this.benSoHuuTaiSan = benSoHuuTaiSan;
	}

	public List<DMLoaiGiayTo> getListLoaiGiayTo() {
		return listLoaiGiayTo;
	}

	public void setListLoaiGiayTo(List<DMLoaiGiayTo> listLoaiGiayTo) {
		this.listLoaiGiayTo = listLoaiGiayTo;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public String getTenKhoaTaiSan() {
		return tenKhoaTaiSan;
	}

	public void setTenKhoaTaiSan(String tenKhoaTaiSan) {
		this.tenKhoaTaiSan = tenKhoaTaiSan;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Integer getTaiSanID() {
		return taiSanID;
	}

	public void setTaiSanID(Integer taiSanID) {
		this.taiSanID = taiSanID;
	}

	public Integer getLoaiTaiSanID() {
		return loaiTaiSanID;
	}

	public void setLoaiTaiSanID(Integer loaiTaiSanID) {
		this.loaiTaiSanID = loaiTaiSanID;
	}

	public String getTenPhieuTaiSan() {
		return tenPhieuTaiSan;
	}

	public void setTenPhieuTaiSan(String tenPhieuTaiSan) {
		this.tenPhieuTaiSan = tenPhieuTaiSan;
	}

	public Integer getTaiSanSoTietKiemID() {
		return taiSanSoTietKiemID;
	}

	public void setTaiSanSoTietKiemID(Integer taiSanSoTietKiemID) {
		this.taiSanSoTietKiemID = taiSanSoTietKiemID;
	}

	public String getNgayGui() {
		return ngayGui;
	}

	public void setNgayGui(String ngayGui) {
		this.ngayGui = ngayGui;
	}

	public Double getSoDuTienGui() {
		return soDuTienGui;
	}

	public void setSoDuTienGui(Double soDuTienGui) {
		this.soDuTienGui = soDuTienGui;
	}

	public String getKyHan() {
		return kyHan;
	}

	public void setKyHan(String kyHan) {
		this.kyHan = kyHan;
	}

	public String getLaiXuat() {
		return laiXuat;
	}

	public void setLaiXuat(String laiXuat) {
		this.laiXuat = laiXuat;
	}

	public String getLoaiTien() {
		return loaiTien;
	}

	public void setLoaiTien(String loaiTien) {
		this.loaiTien = loaiTien;
	}

	public String getNganHangCap() {
		return nganHangCap;
	}

	public void setNganHangCap(String nganHangCap) {
		this.nganHangCap = nganHangCap;
	}

	public String getHoTenChuSo() {
		return hoTenChuSo;
	}

	public void setHoTenChuSo(String hoTenChuSo) {
		this.hoTenChuSo = hoTenChuSo;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Integer getLoaiGiayToID() {
		return loaiGiayToID;
	}

	public void setLoaiGiayToID(Integer loaiGiayToID) {
		this.loaiGiayToID = loaiGiayToID;
	}

	public String getSoGiayTo() {
		return soGiayTo;
	}

	public void setSoGiayTo(String soGiayTo) {
		this.soGiayTo = soGiayTo;
	}

	public String getNgayCapGiayTo() {
		return ngayCapGiayTo;
	}

	public void setNgayCapGiayTo(String ngayCapGiayTo) {
		this.ngayCapGiayTo = ngayCapGiayTo;
	}

	public String getNoiCapGiayTo() {
		return noiCapGiayTo;
	}

	public void setNoiCapGiayTo(String noiCapGiayTo) {
		this.noiCapGiayTo = noiCapGiayTo;
	}

}

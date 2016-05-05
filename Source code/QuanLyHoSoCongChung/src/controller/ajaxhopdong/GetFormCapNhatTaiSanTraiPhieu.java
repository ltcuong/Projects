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
import entity.TSTaiSan;
import entity.TSTraiPhieu;

public class GetFormCapNhatTaiSanTraiPhieu extends BaseAction {

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
	private Integer taiSanTraiPhieuID;
	private String loaiTraiPhieu;
	private String ngayPhatHanh;
	private String noiPhatHanhTraiPhieu;
	private String menhGia;
	private String kyHan;
	private String laiSuat;
	private String thoiHanThanhToan;
	private String hoTen;
	private String diaChi;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private String noiCapGiayTo;
	private String ngayCapGiayTo;
	
	public String execute() {
		DanhMucService danhMucSV = new DanhMucService();
		listLoaiGiayTo = danhMucSV.getAllLoaiGiayTo(Const.UNLOCKED);
		
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinTaiSanTraiPhieu() {
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
			TSTraiPhieu traiPhieu = new TSTraiPhieu();
			traiPhieu.setLoaiTraiPhieu(loaiTraiPhieu);
			Date d1 = null;
			if (ngayPhatHanh != null && !ngayPhatHanh.isEmpty()) {
				try {
					d1 = df.parse(ngayPhatHanh);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			traiPhieu.setNgayPhatHanh(d1);
			traiPhieu.setNoiPhatHanhTraiPhieu(noiPhatHanhTraiPhieu);
			traiPhieu.setMenhGia(menhGia);
			traiPhieu.setKyHan(kyHan);
			traiPhieu.setLaiSuat(laiSuat);
			traiPhieu.setThoiHanThanhToan(thoiHanThanhToan);
			traiPhieu.setHoTen(hoTen);
			traiPhieu.setDiaChi(diaChi);
			if (loaiGiayToID != null && loaiGiayToID.intValue() != 0) {
				traiPhieu.setLoaiGiayToID(loaiGiayToID);	
				traiPhieu.setLoaiGiayTo(danhMucSV.getLoaiGiayToByID(loaiGiayToID));
			} else {
				traiPhieu.setLoaiGiayToID(null);
			}
			
			traiPhieu.setSoGiayTo(soGiayTo);
			traiPhieu.setNoiCapGiayTo(noiCapGiayTo);
			Date d2 = null;
			if (ngayCapGiayTo != null && !ngayCapGiayTo.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayTo);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			traiPhieu.setNgayCapGiayTo(d2);
			
			taiSan.setTaiSanTraiPhieu(traiPhieu);
			traiPhieu.setTaiSan(taiSan);
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

	public Integer getTaiSanTraiPhieuID() {
		return taiSanTraiPhieuID;
	}

	public void setTaiSanTraiPhieuID(Integer taiSanTraiPhieuID) {
		this.taiSanTraiPhieuID = taiSanTraiPhieuID;
	}

	public String getLoaiTraiPhieu() {
		return loaiTraiPhieu;
	}

	public void setLoaiTraiPhieu(String loaiTraiPhieu) {
		this.loaiTraiPhieu = loaiTraiPhieu;
	}

	public String getNgayPhatHanh() {
		return ngayPhatHanh;
	}

	public void setNgayPhatHanh(String ngayPhatHanh) {
		this.ngayPhatHanh = ngayPhatHanh;
	}

	public String getNoiPhatHanhTraiPhieu() {
		return noiPhatHanhTraiPhieu;
	}

	public void setNoiPhatHanhTraiPhieu(String noiPhatHanhTraiPhieu) {
		this.noiPhatHanhTraiPhieu = noiPhatHanhTraiPhieu;
	}

	public String getMenhGia() {
		return menhGia;
	}

	public void setMenhGia(String menhGia) {
		this.menhGia = menhGia;
	}

	public String getKyHan() {
		return kyHan;
	}

	public void setKyHan(String kyHan) {
		this.kyHan = kyHan;
	}

	public String getLaiSuat() {
		return laiSuat;
	}

	public void setLaiSuat(String laiSuat) {
		this.laiSuat = laiSuat;
	}

	public String getThoiHanThanhToan() {
		return thoiHanThanhToan;
	}

	public void setThoiHanThanhToan(String thoiHanThanhToan) {
		this.thoiHanThanhToan = thoiHanThanhToan;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
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

	public String getNoiCapGiayTo() {
		return noiCapGiayTo;
	}

	public void setNoiCapGiayTo(String noiCapGiayTo) {
		this.noiCapGiayTo = noiCapGiayTo;
	}

	public String getNgayCapGiayTo() {
		return ngayCapGiayTo;
	}

	public void setNgayCapGiayTo(String ngayCapGiayTo) {
		this.ngayCapGiayTo = ngayCapGiayTo;
	}

}

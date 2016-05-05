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
import entity.TSCoPhieu;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanCoPhieu extends BaseAction {

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
	private String ctyPhatHanhCoPhieu;
	private String diaChiCongTy;
	private Double menhGia;
	private Double tongMenhGia;
	private String soDangKy;
	private String ngayPhatHanh;
	private String loaiCoPhieu;
	private String tenCoDong;
	private String diaChiCoDong;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private String ngayCapGiayTo;
	private String noiCapGiayTo;
	
	public String execute() {
		DanhMucService danhMucSV = new DanhMucService();
		listLoaiGiayTo = danhMucSV.getAllLoaiGiayTo(Const.UNLOCKED);
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinTaiSanCoPhieu() {
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
			TSCoPhieu coPhieu = new TSCoPhieu();
			coPhieu.setCtyPhatHanhCoPhieu(ctyPhatHanhCoPhieu);
			coPhieu.setDiaChiCongTy(diaChiCongTy);
			coPhieu.setMenhGia(menhGia);
			coPhieu.setTongMenhGia(tongMenhGia);
			coPhieu.setSoDangKy(soDangKy);
			Date d1 = null;
			if (ngayPhatHanh != null && !ngayPhatHanh.isEmpty()) {
				try {
					d1 = df.parse(ngayPhatHanh);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			coPhieu.setNgayPhatHanh(d1);
			coPhieu.setLoaiCoPhieu(loaiCoPhieu);
			coPhieu.setTenCoDong(tenCoDong);
			coPhieu.setDiaChiCoDong(diaChiCoDong);
			if (loaiGiayToID != null && loaiGiayToID.intValue() != 0) {
				coPhieu.setLoaiGiayToID(loaiGiayToID);	
				coPhieu.setLoaiGiayTo(danhMucSV.getLoaiGiayToByID(loaiGiayToID));
			} else {
				coPhieu.setLoaiGiayToID(null);
			}
			coPhieu.setSoGiayTo(soGiayTo);
			Date d2 = null;
			if (ngayCapGiayTo != null && !ngayCapGiayTo.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayTo);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			coPhieu.setNgayCapGiayTo(d2);
			coPhieu.setNoiCapGiayTo(noiCapGiayTo);
			
			taiSan.setTaiSanCoPhieu(coPhieu);
			coPhieu.setTaiSan(taiSan);
			
			
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

	public String getCtyPhatHanhCoPhieu() {
		return ctyPhatHanhCoPhieu;
	}

	public void setCtyPhatHanhCoPhieu(String ctyPhatHanhCoPhieu) {
		this.ctyPhatHanhCoPhieu = ctyPhatHanhCoPhieu;
	}

	public String getDiaChiCongTy() {
		return diaChiCongTy;
	}

	public void setDiaChiCongTy(String diaChiCongTy) {
		this.diaChiCongTy = diaChiCongTy;
	}

	public Double getMenhGia() {
		return menhGia;
	}

	public void setMenhGia(Double menhGia) {
		this.menhGia = menhGia;
	}

	public Double getTongMenhGia() {
		return tongMenhGia;
	}

	public void setTongMenhGia(Double tongMenhGia) {
		this.tongMenhGia = tongMenhGia;
	}

	public String getSoDangKy() {
		return soDangKy;
	}

	public void setSoDangKy(String soDangKy) {
		this.soDangKy = soDangKy;
	}

	public String getNgayPhatHanh() {
		return ngayPhatHanh;
	}

	public void setNgayPhatHanh(String ngayPhatHanh) {
		this.ngayPhatHanh = ngayPhatHanh;
	}

	public String getLoaiCoPhieu() {
		return loaiCoPhieu;
	}

	public void setLoaiCoPhieu(String loaiCoPhieu) {
		this.loaiCoPhieu = loaiCoPhieu;
	}

	public String getTenCoDong() {
		return tenCoDong;
	}

	public void setTenCoDong(String tenCoDong) {
		this.tenCoDong = tenCoDong;
	}

	public String getDiaChiCoDong() {
		return diaChiCoDong;
	}

	public void setDiaChiCoDong(String diaChiCoDong) {
		this.diaChiCoDong = diaChiCoDong;
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

package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.HDHopDongTam;
import entity.TSMayBay;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanMayBay extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private Integer taiSanID;
	private Integer loaiTaiSanID;
	private String tenPhieuTaiSan;
	private String tenKhoaTaiSan;
	private String ghiChu;
	private int benSoHuuTaiSan;
	//
	private Integer taiSanMayBayID;
	private String tenPhuongTien;
	private String dacDiemTaiSan;
	private String ngayCapGiayDangKy;
	private String noiCapGiayDangKy;
	
	public String execute() {
		
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinTaiSanMayBay() {
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
			TSMayBay mayBay = new TSMayBay();
			mayBay.setTenPhuongTien(tenPhuongTien);
			mayBay.setDacDiemTaiSan(dacDiemTaiSan);
			Date d1 = null;
			if (ngayCapGiayDangKy != null && !ngayCapGiayDangKy.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayDangKy);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			mayBay.setNgayCapGiayDangKy(d1);
			mayBay.setNoiCapGiayDangKy(noiCapGiayDangKy);
			
			taiSan.setTaiSanMayBay(mayBay);
			mayBay.setTaiSan(taiSan);
			
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

	public Integer getTaiSanMayBayID() {
		return taiSanMayBayID;
	}

	public void setTaiSanMayBayID(Integer taiSanMayBayID) {
		this.taiSanMayBayID = taiSanMayBayID;
	}

	public String getTenPhuongTien() {
		return tenPhuongTien;
	}

	public void setTenPhuongTien(String tenPhuongTien) {
		this.tenPhuongTien = tenPhuongTien;
	}

	public String getDacDiemTaiSan() {
		return dacDiemTaiSan;
	}

	public void setDacDiemTaiSan(String dacDiemTaiSan) {
		this.dacDiemTaiSan = dacDiemTaiSan;
	}

	public String getNgayCapGiayDangKy() {
		return ngayCapGiayDangKy;
	}

	public void setNgayCapGiayDangKy(String ngayCapGiayDangKy) {
		this.ngayCapGiayDangKy = ngayCapGiayDangKy;
	}

	public String getNoiCapGiayDangKy() {
		return noiCapGiayDangKy;
	}

	public void setNoiCapGiayDangKy(String noiCapGiayDangKy) {
		this.noiCapGiayDangKy = noiCapGiayDangKy;
	}

}

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
import entity.TSMoToXeMay;
import entity.TSTaiSan;

public class GetFormCapNhatTaiSanMoToXeMay extends BaseAction {

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
	private Integer taiSanMoToXeMayID;
	private String nhanHieu;
	private String loaiXe;
	private String mauSon;
	private Integer namSanXuat;
	private String soKhung;
	private String soMay;
	private String giayDangKySo;
	private String ngayCapGiayDangKy;
	private String noiCapGiayDangKy;
	
	
	public String execute() {
		
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinTaiSanMoToXeMay() {
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
			TSMoToXeMay moToXeMay = new TSMoToXeMay();
			moToXeMay.setNhanHieu(nhanHieu);
			moToXeMay.setLoaiXe(loaiXe);
			moToXeMay.setMauSon(mauSon);
			moToXeMay.setNamSanXuat(namSanXuat);
			moToXeMay.setSoKhung(soKhung);
			moToXeMay.setSoMay(soMay);
			moToXeMay.setGiayDangKySo(giayDangKySo);
			Date d1 = null;
			if (ngayCapGiayDangKy != null && !ngayCapGiayDangKy.isEmpty()) {
				try {
					d1 = df.parse(ngayCapGiayDangKy);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			moToXeMay.setNgayCapGiayDangKy(d1);
			moToXeMay.setNoiCapGiayDangKy(noiCapGiayDangKy);
			taiSan.setTaiSanMoToXeMay(moToXeMay);
			moToXeMay.setTaiSan(taiSan);
			
			
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

	public Integer getTaiSanMoToXeMayID() {
		return taiSanMoToXeMayID;
	}

	public void setTaiSanMoToXeMayID(Integer taiSanMoToXeMayID) {
		this.taiSanMoToXeMayID = taiSanMoToXeMayID;
	}

	public String getNhanHieu() {
		return nhanHieu;
	}

	public void setNhanHieu(String nhanHieu) {
		this.nhanHieu = nhanHieu;
	}

	public String getLoaiXe() {
		return loaiXe;
	}

	public void setLoaiXe(String loaiXe) {
		this.loaiXe = loaiXe;
	}

	public String getMauSon() {
		return mauSon;
	}

	public void setMauSon(String mauSon) {
		this.mauSon = mauSon;
	}

	public Integer getNamSanXuat() {
		return namSanXuat;
	}

	public void setNamSanXuat(Integer namSanXuat) {
		this.namSanXuat = namSanXuat;
	}

	public String getSoKhung() {
		return soKhung;
	}

	public void setSoKhung(String soKhung) {
		this.soKhung = soKhung;
	}

	public String getSoMay() {
		return soMay;
	}

	public void setSoMay(String soMay) {
		this.soMay = soMay;
	}

	public String getGiayDangKySo() {
		return giayDangKySo;
	}

	public void setGiayDangKySo(String giayDangKySo) {
		this.giayDangKySo = giayDangKySo;
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

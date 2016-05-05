package controller.ajaxhopdong;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMLoaiDuongSu;
import entity.DMLoaiGiayTo;
import entity.DMTinh;
import entity.DSDuongSu;
import entity.HDHopDongTam;

public class GetFormCapNhatThongTinDongSoHuuTaiSan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private List<DMLoaiGiayTo> listLoaiGiayTo;
	private List<DMTinh> listTinh;
	//
	private String hoTen;
	private String ngaySinh;
	private Integer namSinh;
	private Integer loaiGiayToID;
	private String soGiayTo;
	private String ngayCapGiayTo;
	private String noiCapGiayTo;
	private Integer tinhThuongTruID;
	private Integer huyenThuongTruID;
	private Integer xaThuongTruID;
	private String soNhaThuongTru;
	private String diaChiLienHe;
	private int benSoHuu;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		
		DanhMucService danhMucSV = new DanhMucService();
		listLoaiGiayTo = danhMucSV.getAllLoaiGiayTo(Const.UNLOCKED);
		listTinh = danhMucSV.getAllTinh(Const.UNLOCKED);
		return SUCCESS;
	}
	
	public String executeCapNhatThongTinNguoiDongSoHuuTaiSan() {
		memberShip = super.getMemberShip();		
		DanhMucService danhMucSV = new DanhMucService();
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
		if (hopDongTam != null) {
			//Thong tin chung
			DSDuongSu dongSoHuu = new DSDuongSu();
			List<DSDuongSu> listDongSoHuu = null;
			if (benSoHuu == 1) {
				listDongSoHuu = hopDongTam.getListDongSoHuuBenA();	
			} else if (benSoHuu == 2) {
				listDongSoHuu = hopDongTam.getListDongSoHuuBenB();
			} else if (benSoHuu == 3) {
				listDongSoHuu = hopDongTam.getListDongSoHuuBenC();
			}
			
			dongSoHuu.setHoTen(hoTen);
			Date d1 = null;
			if (ngaySinh != null && !ngaySinh.isEmpty()) {
				try {
					d1 = df.parse(ngaySinh);
				} catch (Exception e) {
					// TODO: handle exception
				}
			}
			dongSoHuu.setNgaySinh(d1);
			dongSoHuu.setNamSinh(namSinh);
			dongSoHuu.setLoaiGiayToID(loaiGiayToID);
			dongSoHuu.setLoaiGiayTo(danhMucSV.getLoaiGiayToByID(loaiGiayToID));
			dongSoHuu.setSoGiayTo(soGiayTo);
			Date d2 = null;
			if (ngayCapGiayTo != null && !ngayCapGiayTo.isEmpty()) {
				try {
					d2 = df.parse(ngayCapGiayTo);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			dongSoHuu.setNgayCapGiayTo(d2);
			dongSoHuu.setNoiCapGiayTo(noiCapGiayTo);
			dongSoHuu.setTinhThuongTruID(tinhThuongTruID);
			dongSoHuu.setTinhThuongTru(danhMucSV.getTinhByMaso(tinhThuongTruID));
			dongSoHuu.setHuyenThuongTruID(huyenThuongTruID);
			dongSoHuu.setHuyenThuongTru(danhMucSV.getHuyenByMaso(huyenThuongTruID));
			dongSoHuu.setXaThuongTruID(xaThuongTruID);
			dongSoHuu.setXaThuongTru(danhMucSV.getXaByMaso(xaThuongTruID));
			dongSoHuu.setSoNhaThuongTru(soNhaThuongTru);
			dongSoHuu.setDiaChiLienHe(diaChiLienHe);
			dongSoHuu.setLoaiDuongSuID(DMLoaiDuongSu.DUONGSU_DONGSOHUU);
			if (listDongSoHuu == null) {
				listDongSoHuu = new ArrayList<>();
			}
			listDongSoHuu.add(dongSoHuu);	
			if (benSoHuu == 1) {
				hopDongTam.setListDongSoHuuBenA(listDongSoHuu);
			} else if (benSoHuu == 2) {
				hopDongTam.setListDongSoHuuBenB(listDongSoHuu);
			} else if (benSoHuu == 3) {
				hopDongTam.setListDongSoHuuBenC(listDongSoHuu);
			}
			
			session.remove(Const.SESSION_THONGTIN_HOPDONG);
			session.put(Const.SESSION_THONGTIN_HOPDONG, hopDongTam);
			result = Const.STRING_TRUE;
		} else {
			result = Const.STRING_FALSE;
		}
		
		return SUCCESS;
	}

	public int getBenSoHuu() {
		return benSoHuu;
	}

	public void setBenSoHuu(int benSoHuu) {
		this.benSoHuu = benSoHuu;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public Integer getNamSinh() {
		return namSinh;
	}

	public void setNamSinh(Integer namSinh) {
		this.namSinh = namSinh;
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

	public Integer getTinhThuongTruID() {
		return tinhThuongTruID;
	}

	public void setTinhThuongTruID(Integer tinhThuongTruID) {
		this.tinhThuongTruID = tinhThuongTruID;
	}

	public Integer getHuyenThuongTruID() {
		return huyenThuongTruID;
	}

	public void setHuyenThuongTruID(Integer huyenThuongTruID) {
		this.huyenThuongTruID = huyenThuongTruID;
	}

	public Integer getXaThuongTruID() {
		return xaThuongTruID;
	}

	public void setXaThuongTruID(Integer xaThuongTruID) {
		this.xaThuongTruID = xaThuongTruID;
	}

	public String getSoNhaThuongTru() {
		return soNhaThuongTru;
	}

	public void setSoNhaThuongTru(String soNhaThuongTru) {
		this.soNhaThuongTru = soNhaThuongTru;
	}

	public String getDiaChiLienHe() {
		return diaChiLienHe;
	}

	public void setDiaChiLienHe(String diaChiLienHe) {
		this.diaChiLienHe = diaChiLienHe;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public List<DMLoaiGiayTo> getListLoaiGiayTo() {
		return listLoaiGiayTo;
	}

	public void setListLoaiGiayTo(List<DMLoaiGiayTo> listLoaiGiayTo) {
		this.listLoaiGiayTo = listLoaiGiayTo;
	}

	public List<DMTinh> getListTinh() {
		return listTinh;
	}

	public void setListTinh(List<DMTinh> listTinh) {
		this.listTinh = listTinh;
	}
	
}

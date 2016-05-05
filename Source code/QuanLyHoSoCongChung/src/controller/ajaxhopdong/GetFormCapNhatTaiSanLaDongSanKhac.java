package controller.ajaxhopdong;

import java.util.ArrayList;
import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.HDHopDongTam;
import entity.TSTaiSan;
import entity.TSTaiSanLaDongSanKhac;

public class GetFormCapNhatTaiSanLaDongSanKhac extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String result;
	private Integer taiSanID;
	private Integer loaiTaiSanID;
	private String tenKhoaTaiSan;
	private String ghiChu;
	private int benSoHuuTaiSan;
	//
	private String dacDiemTaiSan;
	
	public String execute() {
		
		return SUCCESS;
	}

	public String executeCapNhatThongTinTaiSanLaDongSanKhac() {
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		//SimpleDateFormat df = new SimpleDateFormat(Const.FORMAT_LOCATION_DATE);
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
			taiSan.setTenKhoaTaiSan(tenKhoaTaiSan);
			taiSan.setGhiChu(ghiChu);
			//Thong tin chi tiet
			TSTaiSanLaDongSanKhac dongSanKhac = new TSTaiSanLaDongSanKhac();
			dongSanKhac.setDacDiemTaiSan(dacDiemTaiSan);
			taiSan.setTaiSanLaDongSanKhac(dongSanKhac);
			dongSanKhac.setTaiSan(taiSan);
			
			
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

	public String getDacDiemTaiSan() {
		return dacDiemTaiSan;
	}

	public void setDacDiemTaiSan(String dacDiemTaiSan) {
		this.dacDiemTaiSan = dacDiemTaiSan;
	}
	
}

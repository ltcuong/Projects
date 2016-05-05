package controller.ajaxhopdong;

import java.util.List;

import util.Const;
import controller.BaseAction;
import entity.HDHopDongTam;
import entity.TSTaiSan;

public class GetDanhSachTaiSanHopDongTam extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<TSTaiSan> listTaiSanHopDong;
	private int benSoHuuTaiSan;
	private Integer loaiHopDongChiTietID;
	
	public String execute() {
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			if (benSoHuuTaiSan == 1) {
				listTaiSanHopDong = hopDongTam.getListTaiSanBenA();
			} else {
				listTaiSanHopDong = hopDongTam.getListTaiSanBenB();
			}
			
		}
		return SUCCESS;
	}
	
	public Integer getLoaiHopDongChiTietID() {
		return loaiHopDongChiTietID;
	}

	public void setLoaiHopDongChiTietID(Integer loaiHopDongChiTietID) {
		this.loaiHopDongChiTietID = loaiHopDongChiTietID;
	}

	public List<TSTaiSan> getListTaiSanHopDong() {
		return listTaiSanHopDong;
	}
	public void setListTaiSanHopDong(List<TSTaiSan> listTaiSanHopDong) {
		this.listTaiSanHopDong = listTaiSanHopDong;
	}
	public int getBenSoHuuTaiSan() {
		return benSoHuuTaiSan;
	}
	public void setBenSoHuuTaiSan(int benSoHuuTaiSan) {
		this.benSoHuuTaiSan = benSoHuuTaiSan;
	}
	
}

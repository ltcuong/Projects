package controller.ajaxhopdong;

import java.util.List;

import util.Const;
import controller.BaseAction;
import entity.DSDuongSu;
import entity.HDHopDongTam;

public class GetDanhSachDongSoHuuTaiSan extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DSDuongSu> listDongSoHuuTaiSan;
	private int benSoHuu;
	
	
	public String execute() {
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			if (benSoHuu == 1) {
				listDongSoHuuTaiSan = hopDongTam.getListDongSoHuuBenA();
			} else if (benSoHuu == 2) {
				listDongSoHuuTaiSan = hopDongTam.getListDongSoHuuBenB();
			} else if (benSoHuu == 3) {
				listDongSoHuuTaiSan = hopDongTam.getListDongSoHuuBenC();
			}
		}
		return SUCCESS;
	}


	public List<DSDuongSu> getListDongSoHuuTaiSan() {
		return listDongSoHuuTaiSan;
	}


	public void setListDongSoHuuTaiSan(List<DSDuongSu> listDongSoHuuTaiSan) {
		this.listDongSoHuuTaiSan = listDongSoHuuTaiSan;
	}


	public int getBenSoHuu() {
		return benSoHuu;
	}


	public void setBenSoHuu(int benSoHuu) {
		this.benSoHuu = benSoHuu;
	}
	
}

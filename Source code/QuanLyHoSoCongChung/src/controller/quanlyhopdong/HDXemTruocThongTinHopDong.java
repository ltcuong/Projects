package controller.quanlyhopdong;

import service.HopDongService;
import util.Const;
import controller.BaseAction;
import entity.HDHopDongTam;

public class HDXemTruocThongTinHopDong extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String noiDungHopDong;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		HopDongService hopDongSV = new HopDongService();
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			noiDungHopDong = hopDongSV.getTemplateHopDong(hopDongTam);
		}
		return SUCCESS;
	}

	
	public String executePreviewHopDong() throws Exception {
		memberShip = super.getMemberShip();		
		HopDongService hopDongSV = new HopDongService();
		HDHopDongTam hopDongTam = (HDHopDongTam) session.get(Const.SESSION_THONGTIN_HOPDONG);
		if (hopDongTam != null) {
			noiDungHopDong = hopDongSV.getTemplateHopDong(hopDongTam);
		}
		return SUCCESS;
	}
	
	
	public String getNoiDungHopDong() {
		return noiDungHopDong;
	}

	public void setNoiDungHopDong(String noiDungHopDong) {
		this.noiDungHopDong = noiDungHopDong;
	}
	
}

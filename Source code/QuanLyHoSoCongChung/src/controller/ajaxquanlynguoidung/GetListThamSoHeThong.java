package controller.ajaxquanlynguoidung;

import java.util.List;

import service.QuanLyNguoiDungService;
import util.Const;
import controller.BaseAction;
import entity.TBLThamSoHeThong;

public class GetListThamSoHeThong extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<TBLThamSoHeThong> listConfig;
	
	public String execute() {
		QuanLyNguoiDungService confSV = new QuanLyNguoiDungService();
		listConfig = confSV.getAllConfig(Const.UNLOCKED);
		return SUCCESS;

	}

	public List<TBLThamSoHeThong> getListConfig() {
		return listConfig;
	}

	public void setListConfig(List<TBLThamSoHeThong> listConfig) {
		this.listConfig = listConfig;
	}		

}

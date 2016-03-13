package controller.ajax;

import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMXa;

public class GetXaFullByHuyen extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DMXa> listXa;	
	private Integer huyenID;
	
	public String execute() {
		DanhMucService danhMucSV = new DanhMucService();  
		listXa = danhMucSV.getAllXaByHuyenID(huyenID, Const.UNLOCKED);
		return SUCCESS;

	}

	public List<DMXa> getListXa() {
		return listXa;
	}

	public void setListXa(List<DMXa> listXa) {
		this.listXa = listXa;
	}

	public Integer getHuyenID() {
		return huyenID;
	}

	public void setHuyenID(Integer huyenID) {
		this.huyenID = huyenID;
	}
	
}

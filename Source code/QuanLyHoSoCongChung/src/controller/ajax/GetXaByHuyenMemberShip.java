package controller.ajax;

import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMXa;

public class GetXaByHuyenMemberShip extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private List<DMXa> listXa;	
	private Integer huyenID;
	
	public String execute() {
		memberShip = super.getMemberShip();		
		DanhMucService danhMucSV = new DanhMucService();  
		listXa = danhMucSV.getAllXaByMembershipForSelect(huyenID, Const.UNLOCKED ,memberShip);
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

package controller.ajax;

import java.util.List;

import service.DanhMucService;
import util.Const;
import controller.BaseAction;
import entity.DMHuyen;

public class GetSelectHuyenFull extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<DMHuyen> listHuyen;
	private Integer tinhID;
	
	public String execute() {
		
		try {
			memberShip = super.getMemberShip();
			DanhMucService danhMucSV = new DanhMucService();
			if (tinhID != null) {
				listHuyen = danhMucSV.getAllHuyenByTinhID(tinhID, Const.UNLOCKED);	
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return ERROR;
		}				
		return SUCCESS;

	}

	public List<DMHuyen> getListHuyen() {
		return listHuyen;
	}

	public void setListHuyen(List<DMHuyen> listHuyen) {
		this.listHuyen = listHuyen;
	}

	public Integer getTinhID() {
		return tinhID;
	}

	public void setTinhID(Integer tinhID) {
		this.tinhID = tinhID;
	}
	
}

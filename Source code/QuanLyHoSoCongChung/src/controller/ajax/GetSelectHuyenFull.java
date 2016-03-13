package controller.ajax;

import java.util.List;

import service.DanhMucService;
import controller.BaseAction;
import entity.DMHuyen;

public class GetSelectHuyenFull extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private List<DMHuyen> listHuyen;
	private Integer tinh_maso;
	
	public String execute() {
		
		try {
			memberShip = super.getMemberShip();
			DanhMucService danhMucSV = new DanhMucService();
			if (tinh_maso != null && tinh_maso.intValue() != 0) {
				listHuyen = danhMucSV.getAllHuyenByTinhMaSo(tinh_maso);	
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

	public Integer getTinh_maso() {
		return tinh_maso;
	}

	public void setTinh_maso(Integer tinh_maso) {
		this.tinh_maso = tinh_maso;
	}
	
}

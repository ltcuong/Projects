package controller.quanlyhopdong;

import controller.BaseAction;

public class HDTrangChu extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String execute() throws Exception {
		memberShip = super.getMemberShip();		
		
		return SUCCESS;
	}
	
}
